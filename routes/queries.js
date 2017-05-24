const promise = require('bluebird');
//promise object has .catch/,then etc..

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

function createQ(req, res, next) {
	console.log('CREATE')
	db.none('insert into questions(question)' + 'values(${question})', req.body) 
			// ('insert into answers(choices)'+'values(${choices})')
	.then(function(){
		console.log('i can create')
		res.status(200).json({status: 'yeah!'})
		return next()
	})
}

function createA(req, res, next) {
	db.none('insert into answers(choices)'+'values(${choices})', req.body)
	.then(function(q){
		res.json(q)
		return next()
	})
}

function deleted(req, res, next) {
	let answerID = parseInt(req.params.id)
	// console.log('deleted answer', answerID)
	db.result('delete from answers where answerID = $1', answerID)
	
		.then(function(result){
			res.status(200).json({status: 'deleted'})
			console.log(result);
		})
		.catch(function(err){
			console.log(err)
			return next(err)
		});
}

function editCreate(req, res, next) {
	db.none('update answers set choices=$1 where choice_for=$2', req.body.choice_for)
	.then(function(){
		
	})
}


module.exports = {
	getQuestions:getQuestions,
	getAnswers: getAnswers,
	createA: createA,
	createQ: createQ,
	deleted: deleted,
}

 /* `select questions.question, answers.choices, answers.letter, answers.choice_for, answers.correct 
		 from questions 
		 JOIN answers ON questions.questionID = answers.choice_for`*/


