import json
import ast

# open opa result file and load to variable
file_name = open('test.json','r')
# json_data = ast.literal_eval(json.dumps(file_name))


data = json.loads(file_name.read())
print(data)
# proj_level = data["proj_rbac"]["allow"]
