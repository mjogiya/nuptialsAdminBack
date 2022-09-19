const express = require("express");
const bodyParser = require("body-parser")
const Cors = require("cors");
//const router = express();
const mysql = require("mysql");
const session = require("express-session");
const cookieParser = require("cookie-parser");
const router = express.Router();

router.use(bodyParser.urlencoded({ extended:true}));
router.use(Cors({
    origin: 'http://localhost:3000',
    methods: ["POST", "GET"],
    credentials: true,
}));
router.use(express.json());
router.use(express.urlencoded({ extended: false}));
router.use(cookieParser());

const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "Nuptials"
});

router.post('/selectUsers', (req, res) => {
    con.query("SELECT * from register;", (err, result) => {
        res.send(result);
        // console.log(err);
    })
});

router.post('/pendingUsers', (req, res) => {
    con.query("SELECT * FROM register where request='Pending';", (err, result) => {
        res.send(result);
    })
})
router.post('/approvedUsers', (req, res) => {
    con.query("SELECT * FROM register where request='Approved';", (err, result) => {
        res.send(result);
    })
})
router.post('/rejectedUsers', (req, res) => {
    con.query("SELECT * FROM register where request='Rejected';", (err, result) => {
        res.send(result);
    })
})

module.exports=router