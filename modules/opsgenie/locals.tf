locals {
  unique_teams = distinct ([
  for user in var.opsgenie_users_list : user.opsgenie.team
  ])
}