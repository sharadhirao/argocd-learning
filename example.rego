package rbac

# Example input request

input = {
    "sonarqube": "APPORVED",
    "blackduck": "APPORVED",
    "coverity": "APPORVED",
    "QGtest": "APPORVED"
}

default allow = false

# allow {                         # Allow is true IF
#    input.sonarqube == "APPORVED"      
#    input.blackduck == "APPORVED"        
#    input.coverity == "APPORVED" 
#    input.QGtest == "APPORVED"
# }

allow = true {                  # Allow is true IF
   blackduck := "APPORVED"         # postMethod variable is succesfully assigned string value "POST" AND

   input.sonarqube == "APPORVED"       # input.user equals "Thomas" AND
   input.blackduck == blackduck 
   input.QGtest == "APPORVED"
   input.coverity == "APPORVED" # input.resource equals "resource"
}
# opa eval --data example.rego --profile --format=pretty 'data.rbac.allow'
