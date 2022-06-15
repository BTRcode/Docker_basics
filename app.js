const express = require("express");
const app = express();
const PORT = 5010;

app.get("/", (req, res)=> {
    return res.send("hello from server")
})

app.listen(PORT, ()=> {
    console.log(`App connected on ${PORT}`);
})