# terragrunt-plan

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
