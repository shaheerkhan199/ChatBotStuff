from chatterbot.logic import LogicAdapter
import random
from chatterbot.conversation import Statement

class NegotiationLogicAdapter(LogicAdapter):
    price = 2000
    def __init__(self, chatbot, **kwargs):
        super().__init__(chatbot, **kwargs)
        
    def can_process(self, statement):
        #tokens = [statement.split()]
        words= ['buy', 'purchase' , 'negotiate' , 'bargain' , 'price' , 'cost']
#        if (x in statement.text.split() for x in words):
#            return True
#        else:
#            return False
        words= ['buy', 'purchase' , 'negotiate', 'discount' , 'bargain' , 'price' , 'cost']
        for word in words:
            if word in statement.text.split():
                return True
        return False
        

    def process(self, statement, additional_response_selection_parameters):
            

        # Randomly select a confidence between 0 and 1
        confidence = random.uniform(0, 1)

        # For this example, we will just return the input as output
        selected_statement = Statement(text="The price of this product is {}".format(NegotiationLogicAdapter.price))
        selected_statement.confidence = confidence

        return selected_statement
 