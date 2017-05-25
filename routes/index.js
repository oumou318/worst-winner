var express = require('express');
var router = express.Router();
// var db = require('../routes/queries')
var db = require('../routes/queries2');

/* GET home page. */	  //invoked in queries
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/:id', db.getAll);
router.post('/create', db.createQuiz);
router.delete('/:id', db.deleteAll);
router.patch('/:id', db.editQuestion);


/*router.get('/getQ', db.getQuestions);
router.get('/getA', db.getAnswers);
router.post('/cQ', db.createQ);
router.post('/cA', db.createA);
router.delete('/:id', db.deleted);
router.patch('/:id', db.editCreate)*/

module.exports = router;
