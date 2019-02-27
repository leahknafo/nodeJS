
const express = require('express');
const cors = require('cors');
const PORT = 8888;
const app = express();


var mysql = require('mysql');
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "nodeJS"
});   

app.use(cors());



app.get('/student', function (req, res) {
    con.connect(function (err) {
        if (err) throw err;
        con.query("SELECT * FROM students", function (err, result, fields) {
            if (err) throw err;
            console.log(result);
            res.send(result);
        });
    });
});


app.post('/', function (req, res) {
    res.send('post home');
});



app.listen(PORT, function () {
    console.log('server started at port ' + PORT)
});