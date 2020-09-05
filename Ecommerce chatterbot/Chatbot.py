from chatterbot import ChatBot
from chatterbot.trainers import ListTrainer
import random, json

#myBot = ChatBot(
#    "My ChatterBot",
#    logic_adapters=[
#        {
#            "import_path": "negotiationLogicAdapter.NegotiationLogicAdapter",
#            "statement_comparison_function": "chatterbot.comparisons.levenshtein_distance",
#            "response_selection_method": "chatterbot.response_selection.get_first_response"
#        },
#    ]
#)
myBot = ChatBot(
    'Shopping Assistant',
    preprocessors=['chatterbot.preprocessors.clean_whitespace'],
    storage_adapter='chatterbot.storage.SQLStorageAdapter',
    logic_adapters=[
    'chatterbot.logic.BestMatch',
        {
            'import_path': 'priceAskingLogicAdapter.PriceAskingLogicAdapter'
        },    
        {
            'import_path': 'negotiationLogicAdapter.NegotiationLogicAdapter'
        },
        {
            'import_path': 'negotiationSuccessLogicAdapter.NegotiationSuccessLogicAdapter'
        },       
        
        

        {
            'import_path': 'chatterbot.logic.SpecificResponseAdapter',
            'input_text': 'Help me!',
            'output_text': 'Ok, here is a link: http://chatterbot.rtfd.org'
        }
    ],  
)

trainer = ListTrainer(myBot)
# importing bulk (list of conversation) data
with open('complete.json') as f:
    data = json.load(f)
trainer.train(data)

# First Greet the user then ask for input
print("I am chatbot! you can talk to me")
greetings = ['Hi', 'Hello', 'Hey', 'What\'s up?']
print(random.choice(greetings)+" This is Shopping Assistant! How may i help you?")


print("I am chatbot! you can talk to me")
while True:
    user_input = input("You:")
    if user_input.lower() == 'bye':
        break
    else:
        bot_response = myBot.get_response(user_input)
        print("Bot:", bot_response)
        
        
        