# check-terraform-modules

Workflow definition: [check-terraform-modules.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-terraform-modules.yml)

Lints reusable Terraform modules for a component using the specified Terraform and
Terragrunt versions.
It resolves the modules directory from component metadata and runs formatting,
validation, and other static checks via the `tf-modules-lint` action.
Use this workflow to catch module-level issues before modules are tagged and released.

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
