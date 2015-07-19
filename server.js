var express = require('express'),
  exphbs = require('express-handlebars'),
  http = require('http'),
  mongoose = require('mongoose'),
  routes = require('./routes'),
  config = require('./config');

var app = express();
var port = (process.env.PORT || 5000);

app.set('port', port);

//set up handlebars and disable default view engine
app.engine('handlebars', exphbs({ defaultLayout: 'main'}));
app.set('view engine', 'handlebars');
app.disable('etag');

//connect to database
//mongoose.connect('mongodb://localhost/fiveguardoffense_reactjs_ui');

app.use("/", express.static(__dirname + "/public/"));
app.set('views', __dirname + '/views');

//set up routes
app.get('/', routes.index);
app.get('/page/:page/:skip', routes.page);

//initialize server
var server = http.createServer(app).listen(port, function() {
 console.log('Express server listening on port ' + port);  
});

var io = require('socket.io').listen(server);
