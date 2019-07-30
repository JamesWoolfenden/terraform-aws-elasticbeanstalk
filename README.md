[![Slalom][logo]](https://slalom.com)

# terraform-aws-elasticbeanstalk [![Build Status](https://travis-ci.com/JamesWoolfenden/terraform-aws-elasticbeanstalk.svg?branch=master)](https://travis-ci.com/JamesWoolfenden/terraform-aws-elasticbeanstalk) [![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-elasticbeanstalk.svg)](https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk/releases/latest)

  A Terraform module organise and deploy AWS Elasticbeanstalk.

---
It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing terraform code:

``` HCL
module "elasticbeanstalk" {
  source          = "github.com/jameswoolfenden/terraform-aws-elasticbeanstalk"
  version         = "0.1.8"
  common_tags     = var.common_tags

}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name                  | Description                                                     |  Type  | Default  | Required |
|-----------------------|-----------------------------------------------------------------|:------:|:--------:|:--------:|
| CrossZone             | -                                                               | string |    -     |   yes    |
| ImageId               | -                                                               | string |    -     |   yes    |
| LogPublicationControl | -                                                               | string |    -     |   yes    |
| ManagedActions        | -                                                               | string |    -     |   yes    |
| PreferredStartTime    | -                                                               | string |    -     |   yes    |
| RetentionInDays       | -                                                               | string |    -     |   yes    |
| StreamLogs            | -                                                               | string |    -     |   yes    |
| UpdateLevel           | -                                                               | string |    -     |   yes    |
| VpcNameTag            | -                                                               | string |    -     |   yes    |
| application_key       | -                                                               | string |    -     |   yes    |
| application_name      | -                                                               | string |    -     |   yes    |
| asg-instanceport      | -                                                               | string |    -     |   yes    |
| asg-listenerport      | -                                                               | string |    -     |   yes    |
| asg-maxsize           | -                                                               | string |    -     |   yes    |
| asg-minsize           | -                                                               | string |    -     |   yes    |
| common_tags           | -                                                               |  map   |    -     |   yes    |
| depends_on            | This is a way to make a module depends on, which isnt built in. |  list  | `<list>` |    no    |
| healthcheck           | -                                                               | string |    -     |   yes    |
| instance_size         | -                                                               | string |    -     |   yes    |
| name                  | -                                                               | string |    -     |   yes    |
| private_tag           | -                                                               | string |    -     |   yes    |
| stack_reg_ex          | -                                                               | string |    -     |   yes    |

## Outputs

| Name  | Description |
|-------|-------------|
| cname | -           |
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

Copyright © 2019-2019 [Slalom, LLC](https://slalom.com)

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
[linkedin]: https://www.linkedin.com/company/slalom-consulting/
[twitter]: https://twitter.com/Slalom

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-elasticbeanstalk&url=https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-elasticbeanstalk&url=https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk
[share_email]: mailto:?subject=terraform-aws-elasticbeanstalk&body=https://github.com/JamesWoolfenden/terraform-aws-elasticbeanstalk
