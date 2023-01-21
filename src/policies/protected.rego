package asertodemo.GET.api.protected

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false

import input.user.properties.groups as groups
import input.user.properties.roles as roles
import input.user.key as sub

token = {"payload": payload} {
  [header, payload, signature] := io.jwt.decode(input.identity.identity)
}

allowed {
    groups[_] == groups
    roles[_] == roles
    token.payload.sub == "00u3bk41ua3xnzqGT696"
    token.payload.iss == "https://movielabs.okta.com/oauth2/default"
}

