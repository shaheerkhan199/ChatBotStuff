from chatterbot import ChatBot
shopping_bot = ChatBot(
        "My Shopping Bot",
        preprocessors=[
        'chatterbot.preprocessors.clean_whitespace'
    ],
        logic_adapters=[
        'chatterbot.logic.BestMatch',        
        'chatterbot.logic.MathematicalEvaluation',
    ]
    )
#res = shopping_bot.get_response("Good morning, how are you?")
#print(res) 
print("I am chatbot! you can talk to me")
while True:
    user_input = input("You:")
    if user_input.lower() == 'bye':
        break
    else:
        bot_response = shopping_bot.get_response(user_input)
        print("Bot:", bot_response)