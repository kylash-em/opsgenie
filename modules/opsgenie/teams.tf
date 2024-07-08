resource "opsgenie_team" "teams" {
  for_each    = { for team in local.unique_teams : team => team }
  name        = each.value
  description = "Members of ${each.value} team."
}