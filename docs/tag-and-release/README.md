# tag-and-release

Workflow definition: [tag-and-release.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/tag-and-release.yml)

A reusable workflow for creating semver git tags and GitHub releases.
Given a tag prefix, it computes the next patch version, pushes the tag, and creates a
release.
When `FLOATING_TAGS` is enabled, it also updates major and minor floating tags so
consumers can pin to a version range.
Other release workflows (such as `release-library` and `release-terraform-modules`)
call this workflow internally.

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
