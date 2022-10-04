import json
import re

# open opa result file and load to variable
file_name = open('/mnt/vol/rego-org-proj-policy.json')
json_data = file_name.read()
print(json_data)

print( re.sub("(\w+):", r'"\1":',  json_data) )

