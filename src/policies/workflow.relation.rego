package asertodemo.GET.api.workflow.relation

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false

import input.user as user

allowed {
  user.id = "b903673e-33e2-4933-b0a1-2133ee20d09a"
  user.key = "00u3bk41ua3xnzqGT696"
  ds.check_relation({
    "subject": {
      "id": user.id
    },
    "relation": {
      "object_type": "department",
      "name": "member"
    },
    "object": {
      "key": "editorial",
      "type": "department"
    })
}
