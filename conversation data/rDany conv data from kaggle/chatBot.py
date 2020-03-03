import pandas as pd 
from chatterbot import ChatBot
from chatterbot.trainers import ListTrainer

data = pd.read_csv('conversation_data.csv', usecols=['text'],  skiprows = [1])
chatbot = ChatBot('shopping Bot')
trainer = ListTrainer(chatbot)

#test = list(data)
#print(data[:5])
#print(type(data))
#print(test)

newData = data['text'].values.tolist()
#print(newData[:10])

trainer.train(newData)

while True:
    user_input = input("You:")
    if user_input.lower() == 'bye':
        break
    else:
        bot_response = chatbot.get_response(user_input)
        print("ChatBot:", bot_response)
        