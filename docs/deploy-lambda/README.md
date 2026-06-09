# deploy-lambda

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
|    ENVIRONMENT     | string |   true   |         |             |
|        TAG         | string |   true   |         |             |
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
