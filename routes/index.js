var express = require('express');
var router = express.Router();
var db = require('../routes/queries')

/* GET home page. */	  //invoked in queries
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/getAll', db.getAnswers, db.getQuestions)


module.exports = router;
