const express = require("express");
const redis = require("redis");

const app = express();
const client = redis.createClient({ url: "redis://redis:6379" });

client.connect();

app.get("/", async (req, res) => {
  let count = await client.get("visits");
  count = count ? parseInt(count) + 1 : 1;
  await client.set("visits", count);
  res.send(`<h1>Nombre de visites : ${count}</h1>`);
});

app.listen(3000, () => {
  console.log("App en écoute sur le port 3000");
});
