import requests 
import json # use to store a conversation into json format for future use

def extract_data(api):
    raw_data = requests.get(api).json()
    useable_conversation = list()
    for conv in raw_data:
        lis_conv = conv['dialog']
        for i in range(len(lis_conv)):
            #print(lis_conv[i]['text'])
            useable_conversation.append(lis_conv[i]['text'])
    return useable_conversation


#another_api = "https://raw.githubusercontent.com/DeepPavlov/convai/master/data/summer_wild_evaluation_dialogs.json"

#useable_conversation = list()
#for conv in raw_data:
#    lis_conv = conv['dialog']
#    for i in range(len(lis_conv)):
#        #print(lis_conv[i]['text'])
#        useable_conversation.append(lis_conv[i]['text'])
 
conversation1 = extract_data('https://raw.githubusercontent.com/DeepPavlov/convai/master/data/data_volunteers.json')
print(conversation1[:20])
print(len(conversation1))

# writing the data (conversation1) to file
with open('data1.json', 'w') as f:
    json.dump(conversation1, f)


conversation2 = extract_data('https://raw.githubusercontent.com/DeepPavlov/convai/master/data/summer_wild_evaluation_dialogs.json')
print(conversation2[:20])
print(len(conversation2))

# writing the data (conversation2) to file
with open('data2.json', 'w') as f:
    json.dump(conversation2, f)


#trainer.train(useable_conversation)
#while True:
#    user_input = input("You:")
#    if user_input.lower() == 'bye':
#        break
#    else:
#        bot_response = my_bot.get_response(user_input)
#        print("ChatBot:", bot_response)