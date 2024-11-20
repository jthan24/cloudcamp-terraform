variable "bucket_name" {
  description = "Nombre del bucket, debe ser unico"
  type        = string
  default     = "cloudcamp-bucket-"
  sensitive   = false
  nullable    = false

  validation {
    condition     = length(var.bucket_name) > 4 && substr(var.bucket_name, 0, 10) == "cloudcamp-"
    error_message = "El valor de la variable debe iniciar con  \"cloudcamp-\"."
  }
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}
