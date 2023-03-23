const express = require("express");
const app = express();
const PORT = 4000;
app.get('/', (req, res) => {
    res.send(`Congrats Prasanna Thalari! Your NodeJs App  Express server is running on PORT ${PORT}`);
});
app.listen( PORT, () => console.log("Server is listening to port" + PORT ));
