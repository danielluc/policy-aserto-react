package asertodemo.GET.api.workflow.relation

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false

import input.user.id as userId
deptName := "editorial"

allowed {
  ds.check_relation({
    "subject": user.id,
    "object": ds.object({
      "key": deptName,
      "type": "department"
    }).id,
    "relation": {
      "object_type": "department",
      "name": "member"
    }
  })
}
