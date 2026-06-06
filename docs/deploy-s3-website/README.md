# deploy-s3-website

Workflow definition: [deploy-s3-website.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/deploy-s3-website.yml)

Builds and deploys a static website component to S3 and invalidates its CloudFront
distribution.
It discovers deployment targets from `deployments/*/deployment.yml`, builds the site
with environment-specific variables for each target, syncs assets to the configured S3
bucket with appropriate cache headers, and triggers a CloudFront cache invalidation.

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
