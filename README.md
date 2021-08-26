# terraform-aws-elasticbeanstalk

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-elasticbeanstalk.svg)](https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-apigateway.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-apigateway/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-apigateway/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-apigateway&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-apigateway/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-apigateway&benchmark=INFRASTRUCTURE+SECURITY)

A Terraform module organise and deploy AWS Elasticbeanstalk.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing terraform code:
Amazon rotate their available stacks so you will need to update your project check stacks with:

```cli
aws elasticbeanstalk list-available-solution-stacks
```

It also requires that your resources have tags. At a minimum VPC and subnet- to add.

```tags
aws ec2 create-tags --resources vpc-510efa34 --tags Key=Name,Value=Default
aws ec2 create-tags --resources subnet-ebd9cead --tags Key=Name,Value=Default
```

```HCL
module "elasticbeanstalk" {
  source          = "github.com/jameswoolfenden/terraform-aws-elasticbeanstalk"
  version         = "0.1.8"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_elastic_beanstalk_application.application](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elastic_beanstalk_application) | resource |
| [aws_elastic_beanstalk_application_version.latest](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elastic_beanstalk_application_version) | resource |
| [aws_elastic_beanstalk_environment.beanstalk](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elastic_beanstalk_environment) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_elastic_beanstalk_solution_stack.stack](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/elastic_beanstalk_solution_stack) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_CrossZone"></a> [CrossZone](#input\_CrossZone) | n/a | `string` | n/a | yes |
| <a name="input_DeploymentPolicy"></a> [DeploymentPolicy](#input\_DeploymentPolicy) | n/a | `string` | `"Rolling"` | no |
| <a name="input_LogPublicationControl"></a> [LogPublicationControl](#input\_LogPublicationControl) | n/a | `string` | n/a | yes |
| <a name="input_ManagedActions"></a> [ManagedActions](#input\_ManagedActions) | n/a | `string` | n/a | yes |
| <a name="input_PreferredStartTime"></a> [PreferredStartTime](#input\_PreferredStartTime) | For setting Preferred Start Time | `string` | n/a | yes |
| <a name="input_RetentionInDays"></a> [RetentionInDays](#input\_RetentionInDays) | n/a | `string` | n/a | yes |
| <a name="input_StreamLogs"></a> [StreamLogs](#input\_StreamLogs) | n/a | `string` | n/a | yes |
| <a name="input_UpdateLevel"></a> [UpdateLevel](#input\_UpdateLevel) | n/a | `string` | n/a | yes |
| <a name="input_application_key"></a> [application\_key](#input\_application\_key) | n/a | `string` | n/a | yes |
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | n/a | `string` | n/a | yes |
| <a name="input_asg"></a> [asg](#input\_asg) | n/a | `map(any)` | n/a | yes |
| <a name="input_healthcheck"></a> [healthcheck](#input\_healthcheck) | n/a | `string` | n/a | yes |
| <a name="input_launchconfiguration"></a> [launchconfiguration](#input\_launchconfiguration) | n/a | `map(any)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_rollingupdate"></a> [rollingupdate](#input\_rollingupdate) | n/a | `map(any)` | n/a | yes |
| <a name="input_stack_reg_ex"></a> [stack\_reg\_ex](#input\_stack\_reg\_ex) | n/a | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | n/a | `any` | n/a | yes |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | n/a | `map(any)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_beanstalk"></a> [beanstalk](#output\_beanstalk) | n/a |
| <a name="output_cname"></a> [cname](#output\_cname) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk/issues).

## Contribute

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-elasticbeanstalk&url=https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-elasticbeanstalk&url=https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk
[share_email]: mailto:?subject=terraform-aws-elasticbeanstalk&body=https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk
