# from textblob import TextBlob
from textblob.classifiers import NaiveBayesClassifier
import joblib # This is used to save the trained classifier in pickle format
training_data = [
     ('i want to buy a jeans pent', 'Buy_a_product'),
     ('i want to purchase a pair of shoes', 'Buy_a_product'),
     ('are you selling laptops', 'Buy_a_product'),
     ('i need an apple jam', 'Buy_a_product'),
     ('can you please tell me the price of this product', 'Buy_a_product'),
     ('please give me some discount.', 'negotition'),
     ("i cannot afford such price", 'negotition'),
     ("could you negotiate", "negotition"),
     ("i agree on your offer", "success"),
     ("yes i accepcted your offer", "success"),
     ("offer accepted", "success"),
     ("agreed", "success"),
]

clf = NaiveBayesClassifier(training_data)
#cl.classify("can you give me some discount on this product")

joblib.dump(clf, 'intentClassifier.pkl')
