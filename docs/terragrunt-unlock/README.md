# terragrunt-unlock

Workflow definition: [terragrunt-unlock.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/terragrunt-unlock.yml)

Manually removes a stuck Terragrunt state lock for a given stack and unit.
It assumes the AWS role for the target stack, then deletes the lockfile from the S3
state bucket.
Use this workflow as a recovery step when a previous Terragrunt run was interrupted
and left a lock that blocks subsequent plan or apply operations.

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
