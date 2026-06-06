# check-github-actions

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
