var express = require('express');
var router = express.Router();
var db = require('../routes/queries')

/* GET home page. */	  //invoked in queries
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/getQ', db.getQuestions);
router.get('/getA', db.getAnswers);
router.post('/create', db.createQ);
router.post('/cq', db.createA);
router.delete('/:id', db.deleted);

module.exports = router;
