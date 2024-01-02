locals {
  role_name = join("-", [var.github_org_name, "github", "actions", "role"])
}
