import spacy
from textblob import TextBlob
import joblib

nlp = spacy.load("en")
def classifyIntent(userUtterance):
    classifier = joblib.load('intentClassifier.pkl')
    intent = classifier.classify(userUtterance)
    #"Intent with confidence score"
    return intent


def extractEntity(userUtterance):
    ''' This funtion returns a list of tuple a tuple contain 
        (entity Name, Entity Type)    
        We use pre build spacy english language model to extract entities
    '''
    
    docx = nlp(userUtterance)
    listOfTyples = [(word.text, spacy.explain(word.label_)) for word in docx.ents]
    return listOfTyples


def correctSpelling(userUtterance):
    '''This function take the user utterance as input and 
        correct the spelling of every word and then finally return 
        the modified utterance
    '''
    modifiedUtterance = TextBlob(userUtterance).correct()
    return modifiedUtterance



#print(classifyIntent("I am looking for a Samsung LED"))
#print(classifyIntent("How are you?")) # It outputs negotiation that is wrong intent for this utterance

#print(correctSpelling("I wiall talk to yoi tomoro"))
#print(correctSpelling("I want to buy a Jeans"))    
#print(extractEntity("I want to go to America"))
