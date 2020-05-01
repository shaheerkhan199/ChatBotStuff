import spacy
from textblob import TextBlob
import joblib

def classifyIntent(userUtterance):
    classifier = joblib.load('intentClassifier.pkl')
    intent = classifier.classify(userUtterance)
    #"Intent with confidence score"
    return intent

def extractEntity(userUtterance):
    ''' This funtion returns a list of tuple a tuple contain 
        (entity Name, Entity Type)    
    '''
    nlp = spacy.load("en")
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



#print(classifyIntent("can you give me some discount on this product"))
#print(correctSpelling("I wiall talk to yoi tomoro"))    
#print(extractEntity("I will go to London on sunday"))