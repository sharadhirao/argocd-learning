package rbac

# Say we have request that We have environment and according to that Environment we have scan
# Dev: only Sonarqube scan approved is enough
# QA: Sonarqube and QGtest (both should be approved)
# Verify: Sonarqube and QGtest and coverity (all three should be approved)
# Prod: All the 4 scan should be approved

default allow = false

allow = true {  
   input.environment == "dev"         
   input.sonarQG == "PASSED"       
}

allow = true {   
   input.environment == "qa"              
   input.sonarQG == "PASSED" 
   input.blackduckQG == "PASSED"     
}

allow = true {   
   input.environment == "verify"              
   input.sonarQG == "PASSED"  
   input.blackduckQG == "PASSED"
   input.coverityQG == "PASSED"      
}

allow = true {   
   input.environment == "prod"                  
   input.sonarQG == "PASSED" 
   input.blackduckQG == "PASSED"
   input.coverityQG == "PASSED"
   input.blackduck == "PASSED"      
}

# opa eval --data test.rego --input input.json --profile --format=raw 'data.rbac.allow'
