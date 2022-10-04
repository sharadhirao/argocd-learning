import json
import re

# get skipped data value
def get_skipped_params(input_json_data):
    for key in input_data:
        if input_data[key] == "SKIPPED":
            print(key)

file_name = open('/mnt/vol/rego-org-proj-policy.json','r')
json_data = file_name.read()
data =  json.loads(re.sub("(\w+):", r'"\1":',  json_data ))
print( data)

# get OPA result for proj-level and org-level
proj_level = data["proj_rbac"]["allow"]
org_level = data["org_rbac"]["allow"]

# open input json file to get skipped values
input_file_name = open('/mnt/vol/input.json')
input_data = json.loads(input_file_name.read())
environment = input_data["environment"]

# if environment is dev proj-level policy is given priority and if its prod org-level is given priority
if proj_level == False and org_level == False:
    print("Failed")
    exit(1)
elif proj_level == True and org_level == False:
    if environment == "dev" or environment == "QA":
        print("Some scans in organization level for",environment,"environment did not passed")
        get_skipped_params(input_data)
    if environment == "verify" or environment == "prod":
        print("Some scans in organization level for",environment,"environment did not passed")
        get_skipped_params(input_data)
        exit(1)
elif proj_level == False:
    exit(1)

