variable "subscription_id"{
  type=string
}
variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}

//
//

variable "custom_rules_name" {
  type = string
}

variable "custom_rules_priority" {
  type = number
}

variable "custom_rules_rule_type" {
  type = string
}

variable "match_conditions_variables" {
  type = string
}

variable "match_conditions_operator" {
  type = string
}

variable "match_conditions_negation_condition" {
  type = bool
}

variable "match_conditions_match_values" {
  type = list(string)
}

variable "custom_rules_action" {
  type = string
}
