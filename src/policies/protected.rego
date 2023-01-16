package asertodemo.GET.api.protected

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false
default visible = false
default enabled = false

allowed {
    false
}

enabled {
    visible
}

visible {
    input.app == "web-console"
}
