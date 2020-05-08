from chatterbot.logic import LogicAdapter
import random
from chatterbot.conversation import Statement
from utilityFunctions import correctSpelling, classifyIntent


class NegotiationLogicAdapter(LogicAdapter):
    #price = 2000
    def __init__(self, chatbot, **kwargs):
        super().__init__(chatbot, **kwargs)
        
    def can_process(self, statement):

        self.newModifyUtterance = correctSpelling(statement.text)
        self.intent = classifyIntent(self.newModifyUtterance)
        if self.intent == 'negotition':
            return True
        return False
        
        

    def process(self, statement, additional_response_selection_parameters):
        replies = [
                    'Please increase you offer',
                    'Make Counter offer',
                    'Increase some amount so that it will be feasible for both of us',
                    'How much you will pay for this?'
                   ]    
        reply = random.choice(replies)

        # Randomly select a confidence between 0 and 1
        confidence = random.uniform(0, 1)

        # For this example, we will just return price to the user
        #selected_statement = Statement(text="The price of this product is {}".format(NegotiationLogicAdapter.price))
        selected_statement = Statement(text=reply)
        
        selected_statement.confidence = confidence

        return selected_statement
    
 