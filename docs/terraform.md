## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| CrossZone | - | string | - | yes |
| ImageId | - | string | - | yes |
| LogPublicationControl | - | string | - | yes |
| ManagedActions | - | string | - | yes |
| PreferredStartTime | - | string | - | yes |
| RetentionInDays | - | string | - | yes |
| StreamLogs | - | string | - | yes |
| UpdateLevel | - | string | - | yes |
| VpcNameTag | - | string | - | yes |
| application_key | - | string | - | yes |
| application_name | - | string | - | yes |
| asg-instanceport | - | string | - | yes |
| asg-listenerport | - | string | - | yes |
| asg-maxsize | - | string | - | yes |
| asg-minsize | - | string | - | yes |
| common_tags | - | map | - | yes |
| depends_on | This is a way to make a module depends on, which isnt built in. | list | `<list>` | no |
| healthcheck | - | string | - | yes |
| instance_size | - | string | - | yes |
| name | - | string | - | yes |
| private_tag | - | string | - | yes |
| stack_reg_ex | - | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| cname | - |

