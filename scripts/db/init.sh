# #!/bin/bash
# importserver="localhost"

# echo "########### Loading data to Mongo DB ###########"
# mongosh mongodb://172.17.0.1:27017/admin
# # mongosh < ./scripts/db/init-mongo.js

# echo "########### Logged in ###########"


#!/bin/bash

mongo_host="mongodb_container"

# Wait for the MongoDB container to start
until $(mongosh --host $mongo_host --eval "db.adminCommand('ping')" --quiet); do
  echo "Waiting for MongoDB container to start..."
  sleep 5
done

# Connect to MongoDB and run some commands
echo "We conneced. WE CONNECTED. I think."