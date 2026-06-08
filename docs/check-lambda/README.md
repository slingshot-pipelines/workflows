# check-lambda

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
