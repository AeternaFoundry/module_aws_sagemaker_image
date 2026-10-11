output "sagemaker_images_id" {
  description = "Map of id values across all sagemaker_images, keyed the same as var.sagemaker_images"
  value       = { for k, v in aws_sagemaker_image.sagemaker_images : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sagemaker_images_arn" {
  description = "Map of arn values across all sagemaker_images, keyed the same as var.sagemaker_images"
  value       = { for k, v in aws_sagemaker_image.sagemaker_images : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sagemaker_images_description" {
  description = "Map of description values across all sagemaker_images, keyed the same as var.sagemaker_images"
  value       = { for k, v in aws_sagemaker_image.sagemaker_images : k => v.description if v.description != null && length(v.description) > 0 }
}
output "sagemaker_images_display_name" {
  description = "Map of display_name values across all sagemaker_images, keyed the same as var.sagemaker_images"
  value       = { for k, v in aws_sagemaker_image.sagemaker_images : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "sagemaker_images_image_name" {
  description = "Map of image_name values across all sagemaker_images, keyed the same as var.sagemaker_images"
  value       = { for k, v in aws_sagemaker_image.sagemaker_images : k => v.image_name if v.image_name != null && length(v.image_name) > 0 }
}
output "sagemaker_images_region" {
  description = "Map of region values across all sagemaker_images, keyed the same as var.sagemaker_images"
  value       = { for k, v in aws_sagemaker_image.sagemaker_images : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sagemaker_images_role_arn" {
  description = "Map of role_arn values across all sagemaker_images, keyed the same as var.sagemaker_images"
  value       = { for k, v in aws_sagemaker_image.sagemaker_images : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "sagemaker_images_tags" {
  description = "Map of tags values across all sagemaker_images, keyed the same as var.sagemaker_images"
  value       = { for k, v in aws_sagemaker_image.sagemaker_images : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sagemaker_images_tags_all" {
  description = "Map of tags_all values across all sagemaker_images, keyed the same as var.sagemaker_images"
  value       = { for k, v in aws_sagemaker_image.sagemaker_images : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

