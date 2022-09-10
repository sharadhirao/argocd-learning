import yaml
import json

with open('/mnt/vol/build-info.yaml', 'r') as file:
    configuration = yaml.safe_load(file)

with open('/mnt/vol/config.json', 'w') as json_file:
    json.dump(configuration, json_file)
    
with open('/mnt/vol/helm-command.yaml', 'r') as file:
    configuration = yaml.safe_load(file)

with open('/mnt/vol/config2.json', 'w') as json_file:
    json.dump(configuration, json_file)
    
output = json.dumps(json.load(open('/mnt/vol/config.json')), indent=2)
print(output)

