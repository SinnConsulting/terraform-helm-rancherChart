variable "enable_rancher" {
    description = ""
    type = bool
    default = true
}

variable "rancher_release_branch" {
    description = ""
    type = string
    default = "stable"
}

variable "rancher_release_version" {
    description = ""
    type = string
    default = "2.4.13"
}

variable "rancher_namesapce" {
    description = ""
    type = string
    default = "cattle-system"
}

variable "rancher_settings" {
  description = ""
  type        = map(string)
  default     = {}
}
