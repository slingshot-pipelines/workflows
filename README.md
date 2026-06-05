











# workflows

<!-- SUPERDOCS START -->

<details>

<summary>

### check-components
</summary>


Workflow definition: [check-components.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-components.yml)

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

### check-github-actions
</summary>


Workflow definition: [check-github-actions.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-github-actions.yml)

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

### check-library
</summary>


Workflow definition: [check-library.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-library.yml)

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

### deploy-s3-website
</summary>


Workflow definition: [deploy-s3-website.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/deploy-s3-website.yml)

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

### terragrunt-plan
</summary>


Workflow definition: [terragrunt-plan.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/terragrunt-plan.yml)

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
