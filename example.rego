package rbac

# Example input request


default allow = false

allow = true {                  # Allow is true IF
   blackduck := "APPORVED"         # postMethod variable is succesfully assigned string value "POST" AND

   input.sonarqube == "APPORVED"       # input.user equals "Thomas" AND
   input.blackduck == blackduck 
   input.QGtest == "APPORVED"
   input.coverity == "APPORVED" # input.resource equals "resource"
}
# opa eval --data example.rego --profile --format=pretty 'data.rbac.allow'
