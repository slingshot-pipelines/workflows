# check-library

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
