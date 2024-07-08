locals {

  opsgenie_users = {
    for user in yamldecode(file("./users.yml"))["users"] :
    user.email => user
    if try(user.opsgenie.enabled, false)
  }
}