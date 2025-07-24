variable "github_token" {
  type = string
}

variable "app_name" {
  type    = string
  default = "frontend"
}

variable "github_repo" {
  type    = string
  default = "https://github.com/casep/dataiku_frontend"
}

variable "cluster_name" {
  type    = string
  default = "dataiku_api"
}

variable "cluster_version" {
  type    = string
  default = "1.33"
}
