variable "name" {
  description = "Name of the DynamoDB table"
  type        = string
  default     = "testmod"
}


variable "hash_key" {
  type    = string
  default = "TestTableHashKey"
}

variable "hash_key_type" {
  type    = string
  default = "S"
}

variable "range_key_type" {
  type    = string
  default = "S"
}

variable "range_key" {
  type    = string
  default = "TestTableRangeKey"
}

variable "attributes" {
  default = [
    {
      name = "TestTableHashKey",
      type = "S",
    },
    {
      name = "TestTableRangeKey",
      type = "S",
    },
  ]
  type = list(object({ name = string, type = string }))
}

variable "global_secondary_index_map" {
  type = list(object({
    hash_key           = string
    name               = string
    non_key_attributes = list(string)
    projection_type    = string
    range_key          = string
    read_capacity      = number
    write_capacity     = number
  }))
  default     = []
  description = "Additional global secondary indexes in the form of a list of mapped values"
}

variable "billing_mode" {
  type    = string
  default = "PROVISIONED"
}

variable "write_capacity" {
  type    = number
  default = "5"
}

variable "read_capacity" {
  type    = number
  default = "5"
}


variable "global_secondary_indexes" {
  description = "Describe a GSI for the table; subject to the normal limits on the number of GSIs, projected attributes, etc."
  type        = any
  default     = []
}

