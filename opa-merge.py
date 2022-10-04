import json

file_name = open('/mnt/vol/rego-org-proj-policy.json')
data = json.loads(file_name.read())
print(data)
# input_file_name = open('/mnt/vol/input.json')
# input_data = json.loads(input_file_name .read())
# print(input_data)
# environment = input_data["environment"]

# proj_level = data["proj_rbac"]["allow"]
# org_level = data["org_rbac"]["allow"]

# if proj_level == False and org_level == False:
#     print("Failed")
#     exit(1)
# elif proj_level == True and org_level == False:
#     if environment == "dev" or environment == "QA":
#         print("Some scans in organization level for",environment,"environment did not passed")
#         for key in input_data:
#             if input_data[key] == "SKIPPED":
#                 print(key)
