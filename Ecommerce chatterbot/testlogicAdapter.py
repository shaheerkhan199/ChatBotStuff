from chatterbot.logic import LogicAdapter
from chatterbot.conversation import Statement
from textblob.classifiers import NaiveBayesClassifier
import random 
    
class IntentClassification(LogicAdapter):
    def __init__(self, chatbot, **kwargs):
        super().__init__(chatbot, **kwargs)

        training_data = [
            ("Book me a ticket", 1),
            ("Book me a ticket to Singapore", 1),
            ("it is time to go to sleep", 0),
            ("what is your favorite color", 0),
            ("i had a great time", 0),
            ("what is", 0)
        ]
        self.classifier = NaiveBayesClassifier(training_data)
        self.intent_name = 'book_flight'

    def can_process(self, statement):
#        print(statement.text)
#        return self.context.intent is None or self.context.intent == self.intent_name
        if self.classifier.classify(statement.text):
            return True
        return False
    def process(self, statement):
        '''# If the intent is active
        if self.context.intent == self.intent_name:
            # Asks for destination if empty, or Book tickets
            self.context.intent = None
            return 1, Statement('We have booked your tickets')
        else:
            # Check if user's statement matches the intent
            confidence = self.classifier.classify(statement.text.lower())
            if confidence > 0:
                self.context.intent = self.intent_name
                destination_exists = 'singapore' in statement.text.lower()
                if destination_exists:
                    self.context.intent = None
                    return confidence, Statement('We have booked your flight tickets to singapore')
                else:
                    return confidence, Statement('Where are you fying to?')
            else:
                self.context.intent = None
                return confidence, Statement(None)'''
        confidence = random.uniform(0, 1)

        # For this example, we will just return the input as output
        selected_statement = "The price of this product is {}".format()
        selected_statement.confidence = confidence

        return selected_statement