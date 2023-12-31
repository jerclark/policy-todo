package todoApp.EAT.todos.__id

import future.keywords.in
import input.resource
import input.user

default allowed = false

allowed {
  user.properties.roles[_] == "editor"
  user.key == resource.ownerID
}

allowed {
  user.properties.roles[_] == "admin"
}
