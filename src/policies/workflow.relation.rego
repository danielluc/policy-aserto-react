package asertodemo.GET.api.workflow.relation

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false

import input.user.properties.groups as groups
import input.user.properties.roles as roles
import input.user.key as sub

inDept = ds.object ({
  "id": "427a00b2-8934-462e-b2c3-46612ebe1292"
})

allowed {
    inDept
}

