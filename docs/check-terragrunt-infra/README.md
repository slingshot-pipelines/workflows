# check-terragrunt-infra

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
