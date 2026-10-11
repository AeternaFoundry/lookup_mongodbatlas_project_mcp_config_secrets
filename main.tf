data "mongodbatlas_project_mcp_config_secrets" "project_mcp_config_secrets_lookup" {
  for_each = var.project_mcp_config_secrets_lookup

  mcp_config_id = each.value.mcp_config_id
  project_id    = each.value.project_id
}

