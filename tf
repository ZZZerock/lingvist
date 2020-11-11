import collections
import math
def tf(words):
  a=collections.Counter(words)
  b={}
  for i in a:
    b[i]=a[i]/float(len(words))
  return b
 
 def idf(word,corpus):
  return math.log(len(corpus)/sum(word in i for i in corpus))

t1=["game","fan","mode","book"]
t2=["train","book","genji","qwert"]
corpus=[t1,t2]
print(tf(t1))
print(tf(t2))
print(idf("game",corpus))
print(idf("train",corpus))
print(idf("fun",corpus))
