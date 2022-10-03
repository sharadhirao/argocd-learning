package org_rbac

default allow = false

allow = true {                 
   input.environment == "verify"
   input.sonarqube == "APPROVED"  
   input.blackduck == "APPROVED"
   input.coverity == "APPROVED" # input.resource equals "resource"
} 
allow = true {
    input.environment == "prod"
    input.sonarqube == "APPROVED"
    input.coverity == "APPROVED"
    input.blackduck == "APPROVED"
}
allow = true {                  
   input.environment == "dev"
   input.sonarqube == "APPROVED"  
   input.blackduck == "APPROVED"
}
