import pandas as pd

stances = pd.read_csv('train_stances.csv')
stances.head()

bodies = pd.read_csv('train_bodies.csv')
bodies.head()

train = pd.merge(stances, bodies)
train.head()

train.to_csv('train.csv', index=False)