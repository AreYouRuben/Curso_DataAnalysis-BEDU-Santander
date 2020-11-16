from pymongo import MongoClient
# Requires the PyMongo package.
# https://api.mongodb.com/python/current

client = MongoClient('mongodb+srv://Bedu057:1234567890@beducluster057.1goph.mongodb.net/test?authSource=admin&replicaSet=atlas-ghdd2d-shard-0&connectTimeoutMS=600000&socketTimeoutMS=6000000&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
filter={}
project={
    'date': 1, 
    'name': 1, 
    'text': 1, 
    '_id': 0
}

result = client['sample_mflix']['comments'].find(
  filter=filter,
  projection=project
)

################################

client = MongoClient('mongodb+srv://Bedu057:1234567890@beducluster057.1goph.mongodb.net/test?authSource=admin&replicaSet=atlas-ghdd2d-shard-0&connectTimeoutMS=600000&socketTimeoutMS=6000000&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
filter={}
project={
    'title': 1, 
    'cast': 1, 
    'year': 1, 
    '_id': 0
}

result = client['sample_mflix']['movies'].find(
  filter=filter,
  projection=project
)

################################

client = MongoClient('mongodb+srv://Bedu057:1234567890@beducluster057.1goph.mongodb.net/test?authSource=admin&replicaSet=atlas-ghdd2d-shard-0&connectTimeoutMS=600000&socketTimeoutMS=6000000&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
filter={}
project={
    'name': 1, 
    'password': 1, 
    '_id': 0
}

result = client['sample_mflix']['users'].find(
  filter=filter,
  projection=project
)