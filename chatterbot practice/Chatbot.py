from chatterbot import ChatBot
from chatterbot.trainers import ChatterBotCorpusTrainer

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
    'Exact Response Example Bot',
    preprocessors=['chatterbot.preprocessors.clean_whitespace'],
    storage_adapter='chatterbot.storage.SQLStorageAdapter',
    logic_adapters=[
              
        {
            'import_path': 'negotiationLogicAdapter.NegotiationLogicAdapter'
        },
                'chatterbot.logic.BestMatch',
        {
            'import_path': 'chatterbot.logic.SpecificResponseAdapter',
            'input_text': 'Help me!',
            'output_text': 'Ok, here is a link: http://chatterbot.rtfd.org'
        }
    ],  
)

trainer = ChatterBotCorpusTrainer(myBot)
trainer.train()

print("I am chatbot! you can talk to me")
while True:
    user_input = input("You:")
    if user_input.lower() == 'bye':
        break
    else:
        bot_response = myBot.get_response(user_input)
        print("Bot:", bot_response)
        
        
        