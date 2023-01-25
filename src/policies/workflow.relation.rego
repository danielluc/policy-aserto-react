package asertodemo.GET.api.workflow.relation

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false

import input.user.id as userId
deptName := "editorial"

allowed {
  userId = "b903673e-33e2-4933-b0a1-2133ee20d09a"
}
