variable "guardduty_detector_features" {
  description = <<EOT
Map of guardduty_detector_features, attributes below
Required:
    - detector_id
    - name
    - status
Optional:
    - region
    - additional_configuration (block):
        - name (required)
        - status (required)
EOT

  type = map(object({
    detector_id = string
    name        = string
    status      = string
    region      = optional(string)
    additional_configuration = optional(list(object({
      name   = string
      status = string
    })))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

