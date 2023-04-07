#!/bin/bash
importserver="localhost"


echo "########### Loading data to Mongo DB ###########"
mongosh < ./init-mongo.js