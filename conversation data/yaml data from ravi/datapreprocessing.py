import yaml
import os 


yaml_files = os.listdir('yaml_conv_data_files/')
#print(yaml_files)

conversation = list()
for file in yaml_files:
    file_path = 'yaml_conv_data_files/'+file
    try:
        with open(file_path) as file_object:
            raw_data = yaml.load(file_object)
    except FileNotFoundError:
        print("File not found")
    else:
        for conv in raw_data['conversations']:
            for message in conv:
                #print(message)
                conversation.append(message)

print(conversation)
print(len(conversation))