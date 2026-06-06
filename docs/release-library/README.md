# release-library

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
