[![Slalom][logo]](https://slalom.com)

# terraform-aws-elasticbeanstalk

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-elasticbeanstalk.svg)](https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

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

``` HCL
module "elasticbeanstalk" {
  source          = "github.com/jameswoolfenden/terraform-aws-elasticbeanstalk"
  version         = "0.1.8"
  common_tags     = var.common_tags

}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| CrossZone | n/a | `string` | n/a | yes |
| DeploymentPolicy | n/a | `string` | `"Rolling"` | no |
| LogPublicationControl | n/a | `string` | n/a | yes |
| ManagedActions | n/a | `string` | n/a | yes |
| PreferredStartTime | For setting Preferred Start Time | `string` | n/a | yes |
| RetentionInDays | n/a | `string` | n/a | yes |
| StreamLogs | n/a | `string` | n/a | yes |
| UpdateLevel | n/a | `string` | n/a | yes |
| application\_key | n/a | `string` | n/a | yes |
| application\_name | n/a | `string` | n/a | yes |
| asg | n/a | `map` | n/a | yes |
| common\_tags | Implements the common tags scheme | `map` | n/a | yes |
| healthcheck | n/a | `string` | n/a | yes |
| launchconfiguration | n/a | `map` | n/a | yes |
| name | n/a | `string` | n/a | yes |
| rollingupdate | n/a | `map` | n/a | yes |
| stack\_reg\_ex | n/a | `string` | n/a | yes |
| vpc | n/a | `map` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| beanstalk | n/a |
| cname | n/a |

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

Copyright © 2019-2020 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-elasticbeanstalk&url=https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-elasticbeanstalk&url=https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk
[share_email]: mailto:?subject=terraform-aws-elasticbeanstalk&body=https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk
