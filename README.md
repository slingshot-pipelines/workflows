# workflows

<!-- SUPERDOCS START -->

<details>

<summary>

### check-components
</summary>


Workflow definition: [check-components.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-components.yml)

Validates the structure and required fields of a repository's `.components` manifest.

Use this workflow to catch misconfigured or incomplete component metadata before other
pipelines attempt to resolve component paths.

It checks that the root `.components/info.yml` defines a project name and that every component's
`info.yml` includes the required `component`, `type`, and `path` keys.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->
No inputs.
<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->
No secrets.
<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### check-github-action
</summary>


Workflow definition: [check-github-action.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-github-action.yml)

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|     INPUT     |  TYPE   | REQUIRED | DEFAULT | DESCRIPTION |
|---------------|---------|----------|---------|-------------|
|   COMPONENT   | string  |   true   |         |             |
| GENERATE_DOCS | boolean |  false   | `true`  |             |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->

|         SECRET         | REQUIRED | DESCRIPTION |
|------------------------|----------|-------------|
|  WRITER_APP_CLIENT_ID  |  false   |             |
| WRITER_APP_PRIVATE_KEY |  false   |             |

<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### check-github-actions
</summary>


Workflow definition: [check-github-actions.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-github-actions.yml)

Call this workflow as part of pull-request checks to validate workflow YAML before
changes are merged.

Runs [actionlint](https://github.com/rhysd/actionlint) against a component's GitHub
Actions workflow files to catch syntax errors, invalid expressions, and other common
CI configuration mistakes.


## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|   INPUT   |  TYPE  | REQUIRED | DEFAULT | DESCRIPTION |
|-----------|--------|----------|---------|-------------|
| COMPONENT | string |   true   |         |             |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->

|         SECRET         | REQUIRED | DESCRIPTION |
|------------------------|----------|-------------|
|  WRITER_APP_CLIENT_ID  |  false   |             |
| WRITER_APP_PRIVATE_KEY |  false   |             |

<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### check-github-workflows
</summary>


Workflow definition: [check-github-workflows.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-github-workflows.yml)

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|   INPUT   |  TYPE  | REQUIRED | DEFAULT | DESCRIPTION |
|-----------|--------|----------|---------|-------------|
| COMPONENT | string |   true   |         |             |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->

|         SECRET         | REQUIRED | DESCRIPTION |
|------------------------|----------|-------------|
|  WRITER_APP_CLIENT_ID  |  false   |             |
| WRITER_APP_PRIVATE_KEY |  false   |             |

<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### check-json-schemas
</summary>


Workflow definition: [check-json-schemas.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-json-schemas.yml)

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|   INPUT   |  TYPE  | REQUIRED | DEFAULT | DESCRIPTION |
|-----------|--------|----------|---------|-------------|
| COMPONENT | string |   true   |         |             |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->

|         SECRET         | REQUIRED | DESCRIPTION |
|------------------------|----------|-------------|
|  WRITER_APP_CLIENT_ID  |  false   |             |
| WRITER_APP_PRIVATE_KEY |  false   |             |

<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### check-lambda
</summary>


Workflow definition: [check-lambda.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-lambda.yml)

Runs the full CI pipeline for a Lambda component: lint source code, run unit tests,
build the executable, and cache the build output for downstream jobs.
After the source checks pass, it delegates to `check-terragrunt-infra` to lint and
plan the component's infrastructure, ensuring both application code and IaC are
valid before deployment.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|       INPUT        |  TYPE  | REQUIRED | DEFAULT | DESCRIPTION |
|--------------------|--------|----------|---------|-------------|
|     COMPONENT      | string |   true   |         |             |
| TERRAFORM_VERSION  | string |   true   |         |             |
| TERRAGRUNT_VERSION | string |   true   |         |             |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->

|         SECRET         | REQUIRED | DESCRIPTION |
|------------------------|----------|-------------|
|  WRITER_APP_CLIENT_ID  |  false   |             |
| WRITER_APP_PRIVATE_KEY |  false   |             |

<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### check-library
</summary>


Workflow definition: [check-library.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-library.yml)

Runs CI checks for a shared library component: lint source code and run unit tests.
It resolves the component's path and language from `.components` metadata, sets up
the appropriate toolchain (e.g. Go), and fails if linting produces uncommitted
changes.
Use this workflow to verify library code quality on pull requests.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|   INPUT   |  TYPE  | REQUIRED | DEFAULT | DESCRIPTION |
|-----------|--------|----------|---------|-------------|
| COMPONENT | string |   true   |         |             |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->

|         SECRET         | REQUIRED | DESCRIPTION |
|------------------------|----------|-------------|
|  WRITER_APP_CLIENT_ID  |  false   |             |
| WRITER_APP_PRIVATE_KEY |  false   |             |

<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### check-s3-website
</summary>


Workflow definition: [check-s3-website.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-s3-website.yml)

Runs CI checks for a static website component destined for S3/CloudFront hosting.
It installs Node.js dependencies, optionally runs `make lint` and `make unit-test`
if those targets exist, then builds the site with `npm run build`.
Use this workflow to verify that a frontend component compiles successfully before
deployment.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|   INPUT   |  TYPE  | REQUIRED | DEFAULT | DESCRIPTION |
|-----------|--------|----------|---------|-------------|
| COMPONENT | string |   true   |         |             |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->

|         SECRET         | REQUIRED | DESCRIPTION |
|------------------------|----------|-------------|
|  WRITER_APP_CLIENT_ID  |  false   |             |
| WRITER_APP_PRIVATE_KEY |  false   |             |

<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### check-terraform-modules
</summary>


Workflow definition: [check-terraform-modules.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-terraform-modules.yml)

Lints reusable Terraform modules for a component using the specified Terraform and
Terragrunt versions.
It resolves the modules directory from component metadata and runs formatting,
validation, and other static checks via the `tf-modules-lint` action.
Use this workflow to catch module-level issues before modules are tagged and released.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|       INPUT        |  TYPE  | REQUIRED | DEFAULT | DESCRIPTION |
|--------------------|--------|----------|---------|-------------|
|     COMPONENT      | string |   true   |         |             |
| TERRAFORM_VERSION  | string |   true   |         |             |
| TERRAGRUNT_VERSION | string |   true   |         |             |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->

|         SECRET         | REQUIRED | DESCRIPTION |
|------------------------|----------|-------------|
|  WRITER_APP_CLIENT_ID  |  false   |             |
| WRITER_APP_PRIVATE_KEY |  false   |             |

<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### check-terragrunt-infra
</summary>


Workflow definition: [check-terragrunt-infra.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-terragrunt-infra.yml)

Validates a component's Terragrunt infrastructure on pull requests.
It detects which stacks have changed (or checks all stacks when `ALL` is set), lints
the Terraform and Terragrunt code, then runs `terragrunt-plan` on each affected stack
and posts plan output as PR comments.
Optionally restores a build cache so Lambda deployment artifacts are available during
planning.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|       INPUT        |  TYPE   | REQUIRED | DEFAULT |                                      DESCRIPTION                                      |
|--------------------|---------|----------|---------|---------------------------------------------------------------------------------------|
|        ALL         | boolean |  false   | `false` |                                                                                       |
|  BUILD_CACHE_KEY   | string  |  false   |         | If set, the action will try <br>to restore a build cache using <br>the specified key  |
|  BUILD_CACHE_PATH  | string  |  false   |         | If set, the action will try <br>to restore a build cache for <br>the specified path   |
|     COMPONENT      | string  |   true   |         |                                                                                       |
| TERRAFORM_VERSION  | string  |   true   |         |                                                                                       |
| TERRAGRUNT_VERSION | string  |   true   |         |                                                                                       |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->

|         SECRET         | REQUIRED | DESCRIPTION |
|------------------------|----------|-------------|
|  WRITER_APP_CLIENT_ID  |  false   |             |
| WRITER_APP_PRIVATE_KEY |  false   |             |

<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### deploy-lambda
</summary>


Workflow definition: [deploy-lambda.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/deploy-lambda.yml)

Builds and deploys a Lambda component end to end.
It compiles the source executable, caches the build output, then delegates to
`deploy-terragrunt-infra` to apply the component's Terragrunt stacks with the cached
artifacts available.
Use this workflow to ship Lambda function code and its supporting infrastructure
together.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|       INPUT        |  TYPE  | REQUIRED | DEFAULT | DESCRIPTION |
|--------------------|--------|----------|---------|-------------|
|     COMPONENT      | string |   true   |         |             |
| TERRAFORM_VERSION  | string |   true   |         |             |
| TERRAGRUNT_VERSION | string |   true   |         |             |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->

|         SECRET         | REQUIRED | DESCRIPTION |
|------------------------|----------|-------------|
|  WRITER_APP_CLIENT_ID  |  false   |             |
| WRITER_APP_PRIVATE_KEY |  false   |             |

<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### deploy-s3-website
</summary>


Workflow definition: [deploy-s3-website.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/deploy-s3-website.yml)

Builds and deploys a static website component to S3 and invalidates its CloudFront
distribution.
It discovers deployment targets from `deployments/*/deployment.yml`, builds the site
with environment-specific variables for each target, syncs assets to the configured S3
bucket with appropriate cache headers, and triggers a CloudFront cache invalidation.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|    INPUT    |  TYPE  | REQUIRED | DEFAULT | DESCRIPTION |
|-------------|--------|----------|---------|-------------|
|  COMPONENT  | string |   true   |         |             |
| ENVIRONMENT | string |   true   |         |             |
|     TAG     | string |   true   |         |             |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->
No secrets.
<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### deploy-sequence-start
</summary>


Workflow definition: [deploy-sequence-start.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/deploy-sequence-start.yml)

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|   INPUT   |  TYPE  | REQUIRED | DEFAULT | DESCRIPTION |
|-----------|--------|----------|---------|-------------|
| COMPONENT | string |   true   |         |             |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->
No secrets.
<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### deploy-terragrunt-infra
</summary>


Workflow definition: [deploy-terragrunt-infra.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/deploy-terragrunt-infra.yml)

Applies Terragrunt infrastructure changes for a component.
It detects which stacks have changed (or applies all stacks when `ALL` is set), then
runs `terragrunt-apply` on each affected stack in parallel.
Optionally restores a build cache so pre-built artifacts (such as Lambda binaries) are
available during apply.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|       INPUT        |  TYPE   | REQUIRED | DEFAULT |                                      DESCRIPTION                                      |
|--------------------|---------|----------|---------|---------------------------------------------------------------------------------------|
|        ALL         | boolean |  false   | `false` |                                                                                       |
|  BUILD_CACHE_KEY   | string  |  false   |         | If set, the action will try <br>to restore a build cache using <br>the specified key  |
|  BUILD_CACHE_PATH  | string  |  false   |         | If set, the action will try <br>to restore a build cache for <br>the specified path   |
|     COMPONENT      | string  |   true   |         |                                                                                       |
| TERRAFORM_VERSION  | string  |   true   |         |                                                                                       |
| TERRAGRUNT_VERSION | string  |   true   |         |                                                                                       |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->
No secrets.
<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### release-library
</summary>


Workflow definition: [release-library.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/release-library.yml)

Tags and releases a shared library component using semantic versioning.
It reads the component's `tag-prefix` from metadata, computes the next patch version
from existing git tags, creates the tag, pushes it, and publishes a GitHub release.
Use this workflow to cut a new library version after changes are merged to the default
branch.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|   INPUT   |  TYPE  | REQUIRED | DEFAULT | DESCRIPTION |
|-----------|--------|----------|---------|-------------|
| COMPONENT | string |   true   |         |             |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->

|         SECRET         | REQUIRED | DESCRIPTION |
|------------------------|----------|-------------|
|  WRITER_APP_CLIENT_ID  |  false   |             |
| WRITER_APP_PRIVATE_KEY |  false   |             |

<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### release-terraform-modules
</summary>


Workflow definition: [release-terraform-modules.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/release-terraform-modules.yml)

Tags and releases changed Terraform modules for a component.
It detects which modules were modified (or all modules when `ALL` is set), then tags
each one with a semver patch release and optional floating major/minor tags via
`tag-and-release`.
Use this workflow to publish new module versions that consumers can pin in their
Terragrunt configurations.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|   INPUT   |  TYPE   | REQUIRED | DEFAULT | DESCRIPTION |
|-----------|---------|----------|---------|-------------|
|    ALL    | boolean |  false   | `false` |             |
| COMPONENT | string  |   true   |         |             |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->

|         SECRET         | REQUIRED | DESCRIPTION |
|------------------------|----------|-------------|
|  WRITER_APP_CLIENT_ID  |  false   |             |
| WRITER_APP_PRIVATE_KEY |  false   |             |

<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### tag-and-release
</summary>


Workflow definition: [tag-and-release.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/tag-and-release.yml)

A reusable workflow for creating semver git tags and GitHub releases.
Given a tag prefix, it computes the next patch version, pushes the tag, and creates a
release.
When `FLOATING_TAGS` is enabled, it also updates major and minor floating tags so
consumers can pin to a version range.
Other release workflows (such as `release-library` and `release-terraform-modules`)
call this workflow internally.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|     INPUT     |  TYPE   | REQUIRED | DEFAULT | DESCRIPTION |
|---------------|---------|----------|---------|-------------|
| FLOATING_TAGS | boolean |  false   | `false` |             |
|   JOB_NAME    | string  |   true   |         |             |
|  TAG_PREFIX   | string  |   true   |         |             |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->

|     SECRET      | REQUIRED | DESCRIPTION |
|-----------------|----------|-------------|
|  APP_CLIENT_ID  |  false   |             |
| APP_PRIVATE_KEY |  false   |             |

<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### terragrunt-apply
</summary>


Workflow definition: [terragrunt-apply.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/terragrunt-apply.yml)

Applies Terragrunt infrastructure changes for a set of stacks in parallel.
For each stack it assumes the AWS role defined in `stack.yml`, optionally restores a
build cache, and runs `terragrunt stack run apply`.
This is a low-level building block typically called by `deploy-terragrunt-infra` rather
than invoked directly.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|       INPUT        |  TYPE  | REQUIRED | DEFAULT |                                      DESCRIPTION                                      |
|--------------------|--------|----------|---------|---------------------------------------------------------------------------------------|
|  BUILD_CACHE_KEY   | string |  false   |         | If set, the action will try <br>to restore a build cache using <br>the specified key  |
|  BUILD_CACHE_PATH  | string |  false   |         | If set, the action will try <br>to restore a build cache for <br>the specified path   |
|     COMPONENT      | string |   true   |         |                                                                                       |
|       STACK        | string |   true   |         |                                  The stack to deploy                                  |
|     STACKS_DIR     | string |   true   |         |                                                                                       |
|        TAG         | string |   true   |         |                                                                                       |
| TERRAFORM_VERSION  | string |  false   |         |                                                                                       |
| TERRAGRUNT_VERSION | string |  false   |         |                                                                                       |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->
No secrets.
<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### terragrunt-plan
</summary>


Workflow definition: [terragrunt-plan.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/terragrunt-plan.yml)

Plans Terragrunt infrastructure changes for a set of stacks in parallel.
For each stack it assumes the AWS role defined in `stack.yml`, optionally restores a
build cache, runs `terragrunt stack run plan`, and posts the plan output as a pull
request comment.
This is a low-level building block typically called by `check-terragrunt-infra` rather
than invoked directly.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|       INPUT        |  TYPE  | REQUIRED | DEFAULT |                                      DESCRIPTION                                      |
|--------------------|--------|----------|---------|---------------------------------------------------------------------------------------|
|  BUILD_CACHE_KEY   | string |  false   |         | If set, the action will try <br>to restore a build cache using <br>the specified key  |
|  BUILD_CACHE_PATH  | string |  false   |         | If set, the action will try <br>to restore a build cache for <br>the specified path   |
|     COMPONENT      | string |   true   |         |                                                                                       |
|       STACKS       | string |  false   | `"[]"`  |                             JSON array of stacks to plan                              |
|     STACKS_DIR     | string |   true   |         |                                                                                       |
| TERRAFORM_VERSION  | string |  false   |         |                                                                                       |
| TERRAGRUNT_VERSION | string |  false   |         |                                                                                       |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->
No secrets.
<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<details>

<summary>

### terragrunt-unlock
</summary>


Workflow definition: [terragrunt-unlock.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/terragrunt-unlock.yml)

Manually removes a stuck Terragrunt state lock for a given stack and unit.
It assumes the AWS role for the target stack, then deletes the lockfile from the S3
state bucket.
Use this workflow as a recovery step when a previous Terragrunt run was interrupted
and left a lock that blocks subsequent plan or apply operations.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

| INPUT |  TYPE  | REQUIRED | DEFAULT | DESCRIPTION |
|-------|--------|----------|---------|-------------|
| STACK | string |   true   |         |   stack:    |
| UNIT  | string |   true   |         |    unit:    |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->
No secrets.
<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->

</details>
<!-- SUPERDOCS END -->
