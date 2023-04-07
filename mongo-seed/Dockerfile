FROM mongo

COPY init.json /init.json
CMD mongoimport --host mongodb --db admin --collection MyDummyCollection --type json --file /init.json --jsonArray