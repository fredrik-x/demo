var express = require('express');
var app = express();

app.get('/name', function(req, res){
  res.json({surname: 'Svensson'});
});

var server = app.listen(3000, function(){
  console.log('Magic is happening on port 3000')
});


