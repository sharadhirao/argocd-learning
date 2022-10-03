package proj_rbac

default allow = false
allow = true {
    input.environment == "verify"
    input.sonarqube == "APPROVED"
}
allow = true {
    input.environment == "prod"
    input.sonarqube == "APPROVED"
}
allow = true {                  
   input.environment == "dev"
}
