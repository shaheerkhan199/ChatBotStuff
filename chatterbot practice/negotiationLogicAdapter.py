from chatterbot.logic import LogicAdapter
import random
from chatterbot.conversation import Statement

class NegotiationLogicAdapter(LogicAdapter):
    def __init__(self, chatbot, **kwargs):
        super().__init__(chatbot, **kwargs)
        
    def can_process(self, statement):
        #tokens = [statement.split()]
        if 'buy' or 'purchase' or 'negotiate' or 'discount' or 'bargain' or 'price' or 'cost' in statement.text:
            return True
        else:
            return False
        
    
    def process(self, statement, additional_response_selection_parameters):
            

        # Randomly select a confidence between 0 and 1
        confidence = random.uniform(0, 1)

        # For this example, we will just return the input as output
        selected_statement = "The price of this product is {}".format()
        selected_statement.confidence = confidence

        return selected_statement
 