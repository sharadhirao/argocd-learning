package org_rbac

default allow = "False"

allow = "True" {                 
   input.environment == "verify"
   input.sonarqube == "APPROVED"  
   input.blackduck == "APPROVED"
   input.coverity == "APPROVED" # input.resource equals "resource"
} 
allow = "True" {
    input.environment == "prod"
    input.sonarqube == "APPROVED"
    input.coverity == "APPROVED"
    input.blackduck == "APPROVED"
}
allow = "True" {                  
   input.environment == "dev"
   input.sonarqube == "APPROVED"  
   input.blackduck == "APPROVED"
}
