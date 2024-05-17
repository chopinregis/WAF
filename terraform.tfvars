  custom_rules {
    name      = "Rule1"
    priority  = 1
    rule_type = "MatchRule"

    match_conditions {
      match_variables {
        variable_name = "RemoteAddr"
      }

      operator           = "IPMatch"
      negation_condition = false
      match_values       = ["192.168.1.0/24", "10.0.0.0/24"]
    }

    action = "Block"
  }

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

variable "custom_rules_name" {
  type = string
  default = "Rule1"
}

variable "custom_rules_name" {
  type = string
  default = "Rule1"
}
