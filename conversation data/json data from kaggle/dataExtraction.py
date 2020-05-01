import json

with open('conversation.json') as json_object:
    data = json.load(json_object)

raw_data = data['conversations']
#print(data['conversations'])

conversation = list()

for conv_list in raw_data:
    for message in conv_list:
        conversation.append(message)
   


#dataFrame = pd.dataframe(data)
#print(dataFrame)

print(conversation)
print(len(conversation))


    