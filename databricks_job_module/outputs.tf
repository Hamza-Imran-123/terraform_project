output "job_id" {
  description = "The ID of the deployed Databricks job"
  value       = databricks_job.this.id
}
