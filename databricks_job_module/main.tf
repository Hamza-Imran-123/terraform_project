provider "databricks" {
  host  = var.databricks_host
  token = var.databricks_token
}

resource "databricks_job" "this" {
  name                = var.job_name
  max_concurrent_runs = var.max_concurrent_runs

  task {
    notebook_task {
      notebook_path = var.notebook_path
    }
    existing_cluster_id = var.cluster_id
  }

  schedule {
    quartz_cron_expression = var.quartz_cron_expression
    timezone_id            = var.timezone_id
  }
}
