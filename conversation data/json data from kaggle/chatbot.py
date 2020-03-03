from chatterbot import ChatBot
from chatterbot.trainers import ListTrainer
import json

with open('conversation.json') as json_object:
    data = json.load(json_object)

raw_data = data['conversations']
#print(data['conversations'])

conversation = list()

for conv_list in raw_data:
    for message in conv_list:
        conversation.append(message)
       
my_chatbot = ChatBot("Simple Chatbot")
trainer = ListTrainer(my_chatbot)
trainer.train(conversation)

while True:
    user_input = input("You:")
    if user_input.lower() == 'bye':
        break
    else:
        bot_response = my_chatbot.get_response(user_input)
        print("ChatBot:", bot_response)
        
    

#dataFrame = pd.dataframe(data)
#print(dataFrame)

#print(conversation)


    