from chatterbot.logic import LogicAdapter
import random
from chatterbot.conversation import Statement
from utilityFunctions import correctSpelling, classifyIntent


class NegotiationSuccessLogicAdapter(LogicAdapter):
    
    def __init__(self, chatbot, **kwargs):
        super().__init__(chatbot, **kwargs)
        
    def can_process(self, statement):
        self.newModifyUtterance = correctSpelling(statement.text)
        self.intent = classifyIntent(self.newModifyUtterance)
        if self.intent == 'success':
            return True
        return False
        
        

    def process(self, statement, additional_response_selection_parameters):
        replies = [
                    'Thank you have a nice day!',
                    'See you again!',
                    'Thank you for shopping!',
                   ]
        #Generating 6 digit promo code when negotiation success
        promo = random.randint(600000,999999)
        randomReply = random.choice(replies)
        reply = randomReply+" user this {} code for discount".format(promo)
        
        # Randomly select a confidence between 0 and 1
        confidence = random.uniform(0, 1)
        
        # For this example, we will just return price to the user
        #selected_statement = Statement(text="The price of this product is {}".format(NegotiationLogicAdapter.price))
        selected_statement = Statement(text=reply)
        
        selected_statement.confidence = confidence

        return selected_statement
    
 