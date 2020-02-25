from chatterbot import ChatBot
from chatterbot.trainers import UbuntuCorpusTrainer

myBot= ChatBot("Ubuntu Support Chatbot")
trainer = UbuntuCorpusTrainer(myBot)
trainer.train()

print("I am chatbot! you can talk to me")
while True:
    user_input = input("You:")
    if user_input.lower() == 'bye':
        break
    else:
        bot_response = myBot.get_response(user_input)
        print("Bot:", bot_response)