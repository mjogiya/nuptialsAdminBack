const express = require("express");
const bodyParser = require("body-parser")
const Cors = require("cors");
//const router = express();
const mysql = require("mysql");
const session = require("express-session");
const cookieParser = require("cookie-parser");
const router = express.Router();

const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "Nuptials"
});

router.use(bodyParser.urlencoded({ extended:true}));
router.use(Cors({
    origin: 'http://localhost:3000',
    methods: ["POST", "GET"],
    credentials: true,
}));
router.use(express.json());
router.use(express.urlencoded({ extended: false}));
router.use(cookieParser());
router.use(session({
    key: "userId",
    secret: "nuptials",
    resave: false,
    saveUninitialized: false,
    cookie: {
        expires: 60 * 60 * 24 *1000
    }
}));
con.connect(function(error) {
    if(!!error) {
        console.log(error);
    } else {
        console.log('Admin Connected! :) ');
    }
});

router.get('/login/session', (req, res) => {
    if(req.session.admin) {
        res.send({adminLogedin: true});
    } else {
        res.send({adminLogedin : false});
    }
});
router.post('/login', (req, res) => {
    const email = req.body.email;
    const password = req.body.password;
    const login = "SELECT * FROM adminLogin where email = ? AND password = ?";
    console.log(email + password);
    con.query(login, [email, password], (err, result) => {
        console.log(err);
        console.log(result);
        if(result.length>0) {
            req.session.admin = result;
            res.send({adminLogedin: true});
        } else {
            res.send({adminLogedin: false, message: "wrong username or password"});
        }
    });
});
router.get('/logout', (req, res) => {
    req.session.destroy();
    res.send({adminLogedin: false})
});

module.exports=router