module "databricks_job" {
  source                = "../databricks_job_module"
  databricks_host       = var.databricks_host
  databricks_token      = var.databricks_token
  job_name              = "Dev_Sample_Job"
  max_concurrent_runs   = 1
  notebook_path         = "git/repo/path/to/notebook.py"
  cluster_id            = var.cluster_id
  quartz_cron_expression = "0 0 * * ? *"
  timezone_id           = "UTC"
}
