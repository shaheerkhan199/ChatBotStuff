import requests 
from chatterbot import ChatBot
from chatterbot.trainers import ListTrainer

my_bot = ChatBot("Smart Bot")
trainer = ListTrainer(my_bot)


raw_data = requests.get('https://raw.githubusercontent.com/DeepPavlov/convai/master/data/data_volunteers.json').json()
#another_api = "https://raw.githubusercontent.com/DeepPavlov/convai/master/data/summer_wild_evaluation_dialogs.json"
# print(raw_data[8]['dialog'])
#print("***************Test****************")
# chat1 = raw_data[8]['dialog']
# useable_conversation = list()
# for conv in raw_data[:2]:
#     for i in range(len(conv['dialog'])):
#         print(conv[i]['text'])
useable_conversation = list()
for conv in raw_data:
    lis_conv = conv['dialog']
    for i in range(len(lis_conv)):
        #print(lis_conv[i]['text'])
        useable_conversation.append(lis_conv[i]['text'])
        
#     print("New")
print(useable_conversation[])
#trainer.train(useable_conversation)
#while True:
#    user_input = input("You:")
#    if user_input.lower() == 'bye':
#        break
#    else:
#        bot_response = my_bot.get_response(user_input)
#        print("ChatBot:", bot_response)