
const express = require('express');
const cors = require('cors');
const PORT = 8888;
const app = express();
const dns = require('dns');
const fs = require('fs');
const rl = require('readline');
var insert;
var mysql = require('mysql');

var con = mysql.createPool({
host: "localhost",
user: "root",
password: "",
database: "nodeJS"
});   

app.use(cors());


const lineReader = rl.createInterface({
    input: fs.createReadStream('list.txt')
});

lineReader.on('line', function (line) {
    console.log('Line from file:', line);
    
dns.resolve4(line, function(err, d) {
    if (err) {
        console.log(err.code);
        insert=err.code
    } else {
    insert=null;
    }
})
con.getConnection(function(err) {
    if (err) throw err;
    console.log("Connected!");
    var sql = "INSERT INTO files (`domain`, `error`) VALUES ('line', 'insert')";
    con.query(sql, function (err, result) {
      if (err) throw err;
      console.log(insert);
    });
  });   
});

app.get('/error', function (req, res) {
con.getConnection(function (err) {
    if (err) throw err;
    con.query("SELECT * FROM `files` WHERE error IS NOT NULL", function (err, result, fields) {
        if (err) throw err;
        console.log(result);
        res.send(result);
        con.end();
    });
});
});

app.post('/', function (req, res) {
res.send('post home');
});

app.listen(PORT, function () {
console.log('server started at port ' + PORT)
});