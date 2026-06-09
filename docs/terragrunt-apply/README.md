# terragrunt-apply

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
