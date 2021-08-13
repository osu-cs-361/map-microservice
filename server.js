//-----------------------------------------------------------------------------
// Set up Express for server-side
const express = require('express');
const app = express();
app.set('port', 14956);

const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

const mysql = require('./services/dbcon.js');    // dbcon.js hold credientials for mySQL

// Set up routing
app.use(express.static('public'));

// Enable requests from any source
const noCors = (req, res, next) => {
  res.append("Access-Control-Allow-Origin", "*");
  res.append("Access-Control-Allow-Headers", "*");
  res.append("Access-Control-Allow-Methods", "*");
  next();
};
app.use(noCors);


app.get('/beach/:mapID', (req, res, next) => {
  let sql = "SELECT name, city, state, src, href FROM Maps WHERE mapID = ?;"
  mysql.pool.query(sql, req.params.mapID, function (err, results) {
    if (err) {
      next(err);
      return;
    }
    res.json(results[0]);
  })

});

// Get Oregon State University map
app.get('/oregon-state', (req, res, next) => {
  let sql = 'SELECT name, city, state, src, href FROM Maps ' + 
            'WHERE mapID = (SELECT mapID FROM Maps WHERE name="Oregon State University");'
  mysql.pool.query(sql, [], function (err, results) {
    if (err) {
      next(err);
      return;
    }
    res.json(results[0]);
  });
});

//-----------------------------------------------------------------------------
// ERROR handlers
app.use(function (req, res) {
  res.sendStatus(404);
});

app.use(function (err, req, res, next) {
  console.error(err.stack);
  res.sendStatus(500);
});

app.listen(app.get('port'), function () {
  console.log('Express started on http://localhost:' + app.get('port') + '; press Ctrl-C to terminate.');
});
//-----------------------------------------------------------------------------
