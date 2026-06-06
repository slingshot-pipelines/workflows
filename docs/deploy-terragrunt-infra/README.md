# deploy-terragrunt-infra

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
