import json

import json

with open('/mnt/vol/rego-org-proj-policy.txt') as f:
    contents = f.read()
print("contents: ", contents)

res = json.loads(contents)
print(type(res), res)
