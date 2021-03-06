from chatterbot import ChatBot
from chatterbot.trainers import ChatterBotCorpusTrainer, ListTrainer
import random
myBot = ChatBot(
    'Shopping Assistant',
    preprocessors=['chatterbot.preprocessors.clean_whitespace'],
    storage_adapter='chatterbot.storage.SQLStorageAdapter',
    logic_adapters=[
        # {
        #     'import_path': 'priceAskingLogicAdapter.PriceAskingLogicAdapter'
        # },
        # {
        #     'import_path': 'negotiationLogicAdapter.NegotiationLogicAdapter'
        # },
        # {
        #     'import_path': 'negotiationSuccessLogicAdapter.NegotiationSuccessLogicAdapter'
        # },
        'chatterbot.logic.BestMatch',
        
    ],
)
trainer = ListTrainer(myBot)
conversation = [
    "Hello",
    "Hey man! How may i assist you?",
    "Who are you?",
    "I am your shopping assistant",
    "Can you help me?",
    "yes i am here to help you",
]
trainer.train(conversation)
# print("I am chatbot! you can talk to me")
# greetings = ['Hi', 'Hello', 'Hey', 'What\'s up?']
# print(random.choice(greetings) + " This is Shopping Assistant! How may i help you?")
# print("I am chatbot! you can talk to me")
# while True:
#     user_input = input("You:")
#     if user_input.lower() == 'bye':
#         break
#     else:
#         bot_response = myBot.get_response(user_input)
#         print("Bot:", bot_response)