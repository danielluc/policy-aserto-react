package asertodemo.GET.api.protected

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false
default visible = false
default enabled = false

import input.user.attributes.properties.groups as groups
token = {"payload": payload} {
  [header, payload, signature] := io.jwt.decode(input.identity.identity)
}

allowed {
    groups[_] == "labkoat.media"
    token.payload.iss == "https://movielabs.okta.com/oauth2/default"
}

enabled {
    visible
}

visible {
    input.app == "web-console"
}
