import json
# open opa result file and load to variable
file_name = open('/mnt/vol/rego-org-proj-policy.json','r')
data = json.loads(file_name.read())
print(data)
proj_level = data["proj_rbac"]["allow"]
