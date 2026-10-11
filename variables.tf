variable "sagemaker_images" {
  description = <<EOT
Map of sagemaker_images, attributes below
Required:
    - image_name
    - role_arn
Optional:
    - description
    - display_name
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    image_name   = string
    role_arn     = string
    description  = optional(string)
    display_name = optional(string)
    region       = optional(string)
    tags         = optional(map(string))
    tags_all     = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_images : (
        (length(v.image_name) >= 1 && length(v.image_name) <= 63) && (can(regex("^[0-9A-Za-z]([-.]?[0-9A-Za-z])*$", v.image_name)))
      )
    ])
    error_message = "all of: must be between 1 and 63 characters; Valid characters are a-z, A-Z, 0-9, - (hyphen), and . (dot)."
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

