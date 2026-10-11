output "project_mcp_config_secrets_lookup_mcp_config_id" {
  description = "Map of mcp_config_id values across all project_mcp_config_secrets_lookup, keyed the same as var.project_mcp_config_secrets_lookup except keys with no mcp_config_id are omitted"
  value       = { for k, v in data.mongodbatlas_project_mcp_config_secrets.project_mcp_config_secrets_lookup : k => v.mcp_config_id if v.mcp_config_id != null && length(v.mcp_config_id) > 0 }
}
output "project_mcp_config_secrets_lookup_project_id" {
  description = "Map of project_id values across all project_mcp_config_secrets_lookup, keyed the same as var.project_mcp_config_secrets_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.mongodbatlas_project_mcp_config_secrets.project_mcp_config_secrets_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "project_mcp_config_secrets_lookup_results" {
  description = "Map of results values across all project_mcp_config_secrets_lookup, keyed the same as var.project_mcp_config_secrets_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_project_mcp_config_secrets.project_mcp_config_secrets_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}

