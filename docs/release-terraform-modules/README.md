# release-terraform-modules

Workflow definition: [release-terraform-modules.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/release-terraform-modules.yml)

Tags and releases changed Terraform modules for a component.
It detects which modules were modified (or all modules when `ALL` is set), then tags
each one with a semver patch release and optional floating major/minor tags via
`tag-and-release`.
Use this workflow to publish new module versions that consumers can pin in their
Terragrunt configurations.

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
