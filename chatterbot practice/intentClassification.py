# from textblob import TextBlob
from textblob.classifiers import NaiveBayesClassifier
import joblib # This is used to save the trained classifier in pickle format
training_data = [
     ('I want to buy a jeans pent', 'Buy_a_product'),
     ('I want to purchase a pair of shoes', 'Buy_a_product'),
     ('Are you selling laptops', 'Buy_a_product'),
     ('I need an apple jam', 'Buy_a_product'),
     ('Can you please tell me the price of this product', 'Buy_a_product'),
     ('Please give me some discount.', 'negotition'),
     ("I cannot afford such price", 'negotition'),
    ("Could you negotiate", "negotition")
]

clf = NaiveBayesClassifier(training_data)
#cl.classify("can you give me some discount on this product")

joblib.dump(clf, 'intentClassifier.pkl')
