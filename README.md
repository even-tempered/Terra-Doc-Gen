## Terraform Dependency Graph
![Terraform Graph](.tfdoc-assets/terraform-dependency-graph.png)

## Terraform Documentation
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.94.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ebs_volume.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume) | resource |
| [aws_iam_instance_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.this_ssm_ad](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.this_ssm_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_kms_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_network_interface.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_interface) | resource |
| [aws_ssm_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_association) | resource |
| [aws_ssm_document.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_document) | resource |
| [aws_volume_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/volume_attachment) | resource |
| [aws_availability_zones.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_directory_service_directory.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/directory_service_directory) | data source |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_role) | data source |
| [aws_subnet.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_ips"></a> [additional\_ips](#input\_additional\_ips) | Number of additional IP addresses to assign to the EC2 instance in the provided subnet | `number` | `0` | no |
| <a name="input_ami"></a> [ami](#input\_ami) | AMI for the EC2 instance | `string` | n/a | yes |
| <a name="input_counts"></a> [counts](#input\_counts) | Number of EC2 instances to create | `number` | `1` | no |
| <a name="input_cpu_options"></a> [cpu\_options](#input\_cpu\_options) | CPU options for the EC2 instance | <pre>object({<br/>    core_count       = number<br/>    threads_per_core = number<br/>  })</pre> | `null` | no |
| <a name="input_create_new_role"></a> [create\_new\_role](#input\_create\_new\_role) | Set it as true if you want to create new role | `bool` | `true` | no |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | Disk size for the launched instance root volume | `number` | `80` | no |
| <a name="input_domain_id"></a> [domain\_id](#input\_domain\_id) | ID of the AWS Directory Services Domain to join | `string` | `""` | no |
| <a name="input_drive_names"></a> [drive\_names](#input\_drive\_names) | List of Drive Name to create and attach to ec2. | `list(string)` | `[]` | no |
| <a name="input_iam_policy_name"></a> [iam\_policy\_name](#input\_iam\_policy\_name) | Custom policy name for the IAM role | `string` | `""` | no |
| <a name="input_iam_role"></a> [iam\_role](#input\_iam\_role) | Enter an IAM role name that you want to attach. If you want to create a new role leave empty | `string` | `""` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Type of EC2 instance | `string` | `"t2.micro"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Key ID used for SSH/RDP access to the EC2 instance, leave blank for none | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the EC2 instance | `string` | n/a | yes |
| <a name="input_new_instance_profile_name"></a> [new\_instance\_profile\_name](#input\_new\_instance\_profile\_name) | Custom instance profile name | `string` | `""` | no |
| <a name="input_new_role"></a> [new\_role](#input\_new\_role) | Custom role name for the EC2 | `string` | `""` | no |
| <a name="input_number_of_interfaces"></a> [number\_of\_interfaces](#input\_number\_of\_interfaces) | Number of interfaces to assign to the EC2 instance in the provided subnet | `number` | `1` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | List of Security Group IDs to associate to the instance (maximum five) | `list(string)` | n/a | yes |
| <a name="input_source_dest_check"></a> [source\_dest\_check](#input\_source\_dest\_check) | Source/Destination Check for the EC2 instance | `bool` | `true` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID for the EC2 instance | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the EC2 instance | `map(any)` | n/a | yes |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | User data for the EC2 instance | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_drive_name"></a> [drive\_name](#output\_drive\_name) | Name of Additional EBS drives to be  created. |
| <a name="output_ec2_instance_arn"></a> [ec2\_instance\_arn](#output\_ec2\_instance\_arn) | String, EC2 instance ARN if created |
| <a name="output_ec2_instance_id"></a> [ec2\_instance\_id](#output\_ec2\_instance\_id) | List, EC2 Instance IDs |
| <a name="output_existing_iam_role_arn"></a> [existing\_iam\_role\_arn](#output\_existing\_iam\_role\_arn) | String, existing IAM role ARN |
| <a name="output_instance_names"></a> [instance\_names](#output\_instance\_names) | List, instance names |
| <a name="output_kms_key_arn"></a> [kms\_key\_arn](#output\_kms\_key\_arn) | String, ARN of the KMS key used for encrypting the root volume |
| <a name="output_kms_key_id"></a> [kms\_key\_id](#output\_kms\_key\_id) | String, ID of the KMS key used for encryption the root volume |
| <a name="output_new_iam_role_arn"></a> [new\_iam\_role\_arn](#output\_new\_iam\_role\_arn) | String, new IAM role ARN if created |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | List, primary private IPs of the instances |
| <a name="output_private_network_interface_ids"></a> [private\_network\_interface\_ids](#output\_private\_network\_interface\_ids) | List, IDs of the private network interfaces |
| <a name="output_private_network_interfaces_arns"></a> [private\_network\_interfaces\_arns](#output\_private\_network\_interfaces\_arns) | List, ARNs of the private network interfaces |
| <a name="output_private_network_interfaces_ips"></a> [private\_network\_interfaces\_ips](#output\_private\_network\_interfaces\_ips) | List, private IP addresses for the instances |
