var express = require('express');
var app=express();
app.get('/', function(req,res){
    res.send(`<html><body>
        hi<br><a href='links.html'>links</a>
    </body>
    </html>`);
});
app.get('/links.html', function(req,res){
    res.send(`<html><body>
        links:<br><a href='http://johnbryce.co.il'>JB</a>
    </body>
    </html>`);
});
app.listen(8080, function(){
    console.log('listening')
})
.listen
