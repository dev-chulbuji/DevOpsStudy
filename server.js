const express = require('express');
const app = express();

const PORT = 8080;
const HOST = '0.0.0.0';

app.get("*", (req, res, next) => {
  res.send("hello world");
});

app.listen(PORT, () => console.log(`server is running http://${HOST}:${PORT}`))