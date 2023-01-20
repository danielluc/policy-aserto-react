package asertodemo.GET.api.protected

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false
default visible = false
default enabled = false

import input.user.properties.groups as groups
import input.user.properties.roles as roles
token = {"payload": payload} {
  [header, payload, signature] := io.jwt.decode(input.identity.identity)
}

allowed {
    groups[_] == "labkoat.media"
    roles[_] == "editor"
    token.payload.iss == "https://movielabs.okta.com/oauth2/default"
}

enabled {
    visible
}

visible {
    input.app == "web-console"
}
