FROM mongo

RUN mkdir seed-data

COPY /seed-data/posts.json /seed-data/posts.json
COPY /seed-data/users.json /seed-data/users.json

CMD mongoimport --host mongodb --db writer --collection Users --type json --file /seed-data/users.json --jsonArray && \
    mongoimport --host mongodb --db writer --collection Posts --type json --file /seed-data/posts.json --jsonArray