package asertodemo.GET.api.aserto.protected

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false
default visible = false
default enabled = false

allowed {
    true
}

enabled {
    visible
}

visible {
    input.app == "web-console"
}
