//-----------------------------------------------------------------------------
// Set up Express for server-side
const express = require('express');
const app = express();
app.set('port', 14956);

const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// Set up routing
app.use(express.static('public'));

app.get('/', (req, res, next) => {
  res.send("It worked!");
});

//-----------------------------------------------------------------------------
// ERROR handlers
app.use(function (req, res) {
  res.status(404);
  res.render('404');
});

app.use(function (err, req, res, next) {
  console.error(err.stack);
  res.status(500);
  res.render('500');
});

app.listen(app.get('port'), function () {
  console.log('Express started on http://localhost:' + app.get('port') + '; press Ctrl-C to terminate.');
});
//-----------------------------------------------------------------------------