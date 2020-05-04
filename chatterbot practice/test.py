#test = [('Apple', 'Companies, agencies, institutions, etc.')]
#print(test[0][0])

#import spacy
#nlp = spacy.load("en")


items_in_db = {
                "jeans": {
                        "price": 750,
                        "Height":47,
                        "west":34,
                        "color":"blue",    
                        },
                "perfume":{
                        "price":6500,
                        "brand":"J.",
                        },
                "apple":{
                        "price":60000,
                        "model":"6s",
                        "color":"Black",
                        }  
                }
#entity = [('Jeans','product'), ('Perfume','fashion')]
entity = []
if entity:
    print(items_in_db[entity[0][0].lower()]['price'])
else:
    print("No entity found")