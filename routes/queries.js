const promise = require('bluebird');

const option = {
	promiseLib: promise
};

const pgp = require('pg-promise')(option);

const connectionString = process.env.DATABASE_URL;

const db = pgp(connectionString);


function getAnswers(req, res, next) {
	db.any('select * from answers')
	.then(function(quiz){
		res.status(200).json(quiz)
		return next();
	})
	.catch(function(err){
		
	})
}

function getQuestions(req, res, next) {
	db.any('select * from questions')
	.then(function(quest){
		console.log('eyy')
		res.json(quest)
		return next()
	})
}





























        /* `select questions.question, answers.choices, answers.letter, answers.choice_for, answers.correct 
		 from questions 
		 JOIN answers ON questions.questionID = answers.choice_for`*/




module.exports = {
	getQuestions:getQuestions,
	getAnswers: getAnswers,
}




