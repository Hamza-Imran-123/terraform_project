variable "databricks_host" {
  description = "Databricks workspace host URL"
  type        = string
}

variable "databricks_token" {
  description = "Databricks access token"
  type        = string
}

variable "job_name" {
  description = "Name of the Databricks job"
  type        = string
}

variable "max_concurrent_runs" {
  description = "Maximum number of concurrent runs for the job"
  type        = number
}

variable "notebook_path" {
  description = "Path to the notebook in Databricks"
  type        = string
}

variable "cluster_id" {
  description = "ID of the Databricks cluster"
  type        = string
}

variable "quartz_cron_expression" {
  description = "Quartz cron expression for scheduling the job"
  type        = string
}

variable "timezone_id" {
  description = "Timezone ID for the job schedule"
  type        = string
}
