from googletrans import Translator
import pandas as pd 


data = pd.read_csv('conversation_data.csv', usecols=['text'],  skiprows = [1])
newData = data['text'].values.tolist()
conversation = list()
translator = Translator()
for message in newData[30:50]:
    if message != '[START]':
       result = translator.translate(message)
       conversation.append(result)
    else:
        continue
        


#result = translator.translate('Lamento que tengas ese problema ðŸ˜”')
#print(result.text)
        
    
print(newData[30:50])