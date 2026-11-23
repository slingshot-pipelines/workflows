# deploy-s3-website

Workflow definition: [deploy-s3-website.yml](https://github.com/slingshot-pipelines/workflows/blob/main/.github/workflows/deploy-s3-website.yml)

Builds and deploys a static website component to S3 and invalidates its CloudFront
distribution.
It builds the site (`make build`) with the environment-specific variables from
`deployments/<environment>/deployment.yml`, caches the build output, syncs it to the
configured S3 bucket with appropriate cache headers, and triggers a CloudFront cache
invalidation.

If the component declares `subpaths`, the site is built in `subpaths.src` and the
output of `subpaths.build` is uploaded. Before uploading, the Terragrunt stacks in
`subpaths.infra` are applied for the environment, with the build output available to
them, so a single component can create its infrastructure and deploy the site.
Without `subpaths`, the source is the component path, the build output is `dist`, and
no infrastructure is applied.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|       INPUT        |  TYPE  | REQUIRED | DEFAULT |                                                                                                 DESCRIPTION                                                                                                 |
|--------------------|--------|----------|---------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|     COMPONENT      | string |   true   |         |                                                                                                                                                                                                             |
|    ENVIRONMENT     | string |   true   |         |                                                                                                                                                                                                             |
|   SLACK_CHANNEL    | string |  false   |         | If set (along with the SLACK_BOT_TOKEN secret), a Slack message <br>announcing the infrastructure deployment result will <br>be sent to this channel. Only <br>used when the component declares `subpaths`  |
|        TAG         | string |   true   |         |                                                                                                                                                                                                             |
| TERRAFORM_VERSION  | string |  false   |         |                                                       Required when the component declares `subpaths`, <br>since the infrastructure is then applied                                                         |
| TERRAGRUNT_VERSION | string |  false   |         |                                                       Required when the component declares `subpaths`, <br>since the infrastructure is then applied                                                         |

<!-- AUTO-DOC-INPUT:END -->


## Secrets

<!-- AUTO-DOC-SECRETS:START - Do not remove or modify this section -->

|     SECRET      | REQUIRED |                                                            DESCRIPTION                                                             |
|-----------------|----------|------------------------------------------------------------------------------------------------------------------------------------|
| SLACK_BOT_TOKEN |  false   | If set (along with the SLACK_CHANNEL input), a Slack message <br>announcing the infrastructure deployment result will <br>be sent  |

<!-- AUTO-DOC-SECRETS:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->
