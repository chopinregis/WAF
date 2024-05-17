variable "custom_rules_name" {
  type = string
  default = "Rule1"
}

variable "custom_rules_priority" {
  type = number
  default = 1
}

variable "custom_rules_rule_type" {
  type = string
  default = "MatchRule"
}

variable "match_conditions_variables" {
  type = string
  default = "RemoteAddr"
}

variable "match_conditions_operator" {
  type = string
  default = "IPMatch"
}

variable "match_conditions_negation_condition" {
  type = bool
  default = false
}

variable "match_conditions_match_values" {
  type = list(string)
  default = ["192.168.1.0/24", "10.0.0.0/24"]
}

variable "custom_rules_action" {
  type = string
  default = "Block"
}
