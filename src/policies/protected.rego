package asertodemo.GET.api.protected

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false
default visible = false
default enabled = false

import input.user.attributes.properties.groups as groups

allowed {
    groups[_] == "labkoat.medi"
}

enabled {
    visible
}

visible {
    input.app == "web-console"
}
