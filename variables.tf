variable "name" {
  description = "Name of the DynamoDB table"
  type        = string
  default     = "testmod"
}

variable "attributes" {
  type        = list(map(string))
  default     = []
}

variable "hash_key" {
  type        = string
  default     = "UserId"
}

variable "range_key" {
  type        = string
  default     = "GameTitle"
}

variable "billing_mode" {
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "write_capacity" {
  type        = number
  default     = "5"
}

variable "read_capacity" {
  type        = number
  default     = "5"
}

variable "ttl_enabled" {
  description = "Indicates whether ttl is enabled"
  type        = bool
  default     = false
}

variable "ttl_attribute_name" {
  description = "The name of the table attribute to store the TTL timestamp in"
  type        = string
  default     = "TimeToExist"
}

variable "global_secondary_indexes" {
  description = "Describe a GSI for the table; subject to the normal limits on the number of GSIs, projected attributes, etc."
  type        = any
  default     = []
}
