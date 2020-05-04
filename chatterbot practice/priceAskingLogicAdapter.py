from chatterbot.logic import LogicAdapter
import random
from chatterbot.conversation import Statement
from utilityFunctions import correctSpelling, classifyIntent, extractEntity


class PriceAskingLogicAdapter(LogicAdapter):
    #price = 2000
    #Suppose This is the products in our database
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
                
    def __init__(self, chatbot, **kwargs):
        super().__init__(chatbot, **kwargs)
        
    def can_process(self, statement):
        #tokens = [statement.split()]
        '''words= ['buy', 'purchase' , 'negotiate', 'discount' , 'bargain' , 'price' , 'cost']
        for word in words:
            if word in statement.text.split():
                return True
        return False'''
        self.newModifyUtterance = correctSpelling(statement.text)
        self.intent = classifyIntent(self.newModifyUtterance)
        if self.intent == 'Buy_a_product':
            return True
        return False
        
        

    def process(self, statement, additional_response_selection_parameters):
        replies = [
                    'You can get it by only',
                    'The price is',
                    'its only',
                    'Price only for you is',
                    'Reasonable price is',
                    'We will give it to you in',
                   ]
        entity = extractEntity(str(self.newModifyUtterance))
        reply = ''
        if not entity == []:
            reply = random.choice(replies)+" "+format(PriceAskingLogicAdapter.items_in_db[entity[0][0].lower()]['price'])
        else:
            reply = random.choice(replies)+" "+format("No entity found")
        #entity = "testing"
        #reply = random.choice(replies)+" "+format(PriceAskingLogicAdapter.items_in_db[entity]['price'])
        #reply = random.choice(replies)+" "+format(entity)
        
        
        # Randomly select a confidence between 0 and 1
        confidence = random.uniform(0, 1)

        # For this example, we will just return price to the user
        #selected_statement = Statement(text="The price of this product is {}".format(NegotiationLogicAdapter.price))
        selected_statement = Statement(text=reply)
        
        selected_statement.confidence = confidence

        return selected_statement
    
    