package asertodemo.GET.api.workflow.relation

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false

import input.user as user
deptName := "editorial"

allowed {
  user.id = "b903673e-33e2-4933-b0a1-2133ee20d09a"
  user.key = "00u3bk41ua3xnzqGT696"
  user2 = ds.object(user.id)
  department = ds.object({ "key": "editorial", "type": "department" })
  ds.check_relation({
    "subject": user2.id,
    "object": ds.object({
      "key": "editorial",
      "type": "department"
    }).id,
    "relation": {
      "object_type": "department",
      "name": "member"
    }
  })
}
