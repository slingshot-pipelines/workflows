#!/bin/bash -eu

if ! command -v auto-doc >/dev/null 2>&1; then
    >&2 echo "Missing requirement: auto-doc"
    exit 1
fi

README_TEMPLATE="docs/_template/README.md"

GITHUB_SERVER_URL="${GITHUB_SERVER_URL-https://github.com}"
GITHUB_REPOSITORY="${GITHUB_REPOSITORY-slingshot-pipelines/workflows}"

# List all workflow files for docs generation
WORKFLOW_FILES=$(find .github/workflows \
  -mindepth 1 -maxdepth 1 \
  \( -name '*.yml' -or -name '*.yaml' \) \
  -not -name 'internal-*' \
  | sed -nE 's|\.github/workflows/(.+)|\1|p' \
  | sort -u)

echo "::group::Workflow files"
echo "$WORKFLOW_FILES" | sed -nE 's/(.*)/ - \1/p'
echo "::endgroup::"

SUMMARIES=""

# Generate docs for each workflow
while IFS= read -r WORKFLOW_FILE || [[ -n "$WORKFLOW_FILE" ]]; do
  echo "::group::$WORKFLOW_FILE"

  # Strip the file extension
  WORKFLOW_TITLE="${WORKFLOW_FILE%%.*}"

  # Constants for basic paths
  WORKFLOW_DOCS_DIR="docs/${WORKFLOW_TITLE}"
  WORKFLOW_README="${WORKFLOW_DOCS_DIR}/README.md"
  WORKFLOW_DEFINITION="${GITHUB_SERVER_URL}/${GITHUB_REPOSITORY}/blob/main/.github/workflows/${WORKFLOW_FILE}"

  mkdir -p "${WORKFLOW_DOCS_DIR}"
  
  # If a README.md does not already exist, copy the template over
  if [[ ! -e "$WORKFLOW_README" ]]; then
    {
      echo "# {WORKFLOW_TITLE}";
      echo "";
      echo "Workflow definition: [$WORKFLOW_FILE]($WORKFLOW_DEFINITION)";
      echo "";
      cat "$README_TEMPLATE";
    } > "$WORKFLOW_README"
  fi

  # Generate docs
  auto-doc \
    --filename ".github/workflows/$WORKFLOW_FILE" \
    --output "$WORKFLOW_README" \
    --reusable

  echo "::endgroup::"

  SUMMARIES=$(
    echo "$SUMMARIES";
    echo "<details>";
    echo "";
    echo "<summary>";
    echo "";
    echo "### ${WORKFLOW_TITLE}";
    echo "</summary>";
    echo "";
    cat "$WORKFLOW_README" | sed '1d';
    echo "";
    echo "</details>";
  )

done <<< "$WORKFLOW_FILES"

CURRENT_README_CONTENT=$(cat README.md)
NEW_README_CONTENT=""

START_TAG="<!-- SUPERDOCS START -->"
END_TAG="<!-- SUPERDOCS END -->"

FOUND_FIRST_LINE=false
FOUND_START_TAG=false
FOUND_END_TAG=false

while IFS= read -r LINE || [[ -n "$LINE" ]]; do
  if [[ "$FOUND_FIRST_LINE" == "false" ]]; then
    if [[ -n "$LINE" ]]; then
      FOUND_FIRST_LINE=true
      NEW_README_CONTENT="$LINE"
      continue
    fi

    continue
  elif [[ "$FOUND_START_TAG" == "false" ]]; then
    if [[ "$LINE" == "$START_TAG" ]]; then
      FOUND_START_TAG=true
    fi
  elif [[ "$FOUND_END_TAG" == "false" ]]; then
    if [[ "$LINE" == "$END_TAG" ]]; then
      NEW_README_CONTENT="$NEW_README_CONTENT"$'\n'"$SUMMARIES"
      FOUND_END_TAG=true
    else
      continue
    fi
  fi

  NEW_README_CONTENT="$NEW_README_CONTENT"$'\n'"$LINE"
done <<< "$CURRENT_README_CONTENT"

echo "$NEW_README_CONTENT" > "README.md"
