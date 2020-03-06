from googletrans import Translator

data = ['Hi there, how are you!? 😁😁', "Oh, thanks! I'm fine. This is an evening in my timezone", '😄 here is afternoon!', 'How do you feel today? Tell me something about yourself', 'My name is rDany, but you can call me Dany (the r means robot)\nI hope we can be virtual friends!']

conversation = list()
translator = Translator()
for message in data:
    if message != '[START]':
       result = translator.translate('Hi there, how are you!?')
       conversation.append(result)
    else:
        continue
        


#result = translator.translate('Lamento que tengas ese problema ðŸ˜”')
#print(result.text)
        
    
print(conversation[0].text)