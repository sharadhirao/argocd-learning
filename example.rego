package rbac

# Example input request


default allow = false

allow = true {                 
   input.sonarQG == "PASSED"       # input.user equals "Thomas" AND
   input.blackduckQG == "PASSED" 
   input.coverityQG == "PASSED"
}
# opa eval --data example.rego --profile --format=pretty 'data.rbac.allow'
