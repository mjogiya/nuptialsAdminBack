const express = require("express");
const app = express();

const adminLogin = require('./routes/login/login');
const Users = require('./routes/users/selectUsers')

app.use('/admin', adminLogin);
app.use('/users', Users);


app.listen(3005, () => {
    console.log("Listening on 3005 ");
});