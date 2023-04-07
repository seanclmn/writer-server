// Create user
dbAdmin = db.getSiblingDB("admin");
dbAdmin.createUser({
  user: "admin",
  pwd: "admin",
  roles: [{ role: "userAdminAnyDatabase", db: "admin" }],
  mechanisms: ["SCRAM-SHA-1"],
});

// Authenticate user
dbAdmin.auth({
  user: "admin",
  pwd: "admin",
  mechanisms: ["SCRAM-SHA-1"],
  digestPassword: true,
});

// Create DB and collection
db = new Mongo().getDB("customer");
db.createCollection("customer_transaction", { capped: false });
