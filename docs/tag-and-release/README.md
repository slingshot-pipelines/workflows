# {WORKFLOW_TITLE}

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
