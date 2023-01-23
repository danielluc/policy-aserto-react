package asertodemo.GET.api.workflow.group

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false

import input.user.properties.groups as groups
import input.user.key as sub

token = {"payload": payload} {
  [header, payload, signature] := io.jwt.decode(input.identity.identity)
}

allowed {
    groups[_] == "labkoat.media"
    token.payload.sub == sub
    token.payload.iss == "https://movielabs.okta.com/oauth2/default"
}
