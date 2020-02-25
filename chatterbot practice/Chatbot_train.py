from My_Chatbot import shopping_bot
#from chatterbot.trainers import ListTrainer
from chatterbot.trainers import ChatterBotCorpusTrainer

#Now we are not using list trainer any more
trainer = ChatterBotCorpusTrainer(shopping_bot)
trainer.train("chatterbot.corpus.english")



