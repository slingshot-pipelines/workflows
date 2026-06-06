# check-components

Workflow definition: [check-components.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-components.yml)

Validates the structure and required fields of a repository's `.components` manifest.

Use this workflow to catch misconfigured or incomplete component metadata before other
pipelines attempt to resolve component paths.

It checks that the root `.components/info.yml` defines a project name and that every component's
`info.yml` includes the required `component`, `type`, and `path` keys.

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
