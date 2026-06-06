# check-s3-website

Workflow definition: [check-s3-website.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/check-s3-website.yml)

Runs CI checks for a static website component destined for S3/CloudFront hosting.
It installs Node.js dependencies, optionally runs `make lint` and `make unit-test`
if those targets exist, then builds the site with `npm run build`.
Use this workflow to verify that a frontend component compiles successfully before
deployment.

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
