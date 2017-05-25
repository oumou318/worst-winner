const promise = require('bluebird');
//promise object has .catch/,then etc..

const option = {
	promiseLib: promise
};

const pgp = require('pg-promise')(option);

const connectionString = process.env.DATABASE_URL;

const db = pgp(connectionString);

function getAll(req, res, next) {
	// db.any('select * from qna2')
	let id = parseInt(req.params.id)
	db.any('select * from qna2 where id = $1', id)
	.then(function(quiz){
		res.json(quiz)
		return next();
	})

}

function createQuiz(req, res, next) {
	console.log('Si')
	db.none('insert into qna2(question, a, b, c, correct)' + 'values(${question}, ${a}, ${b}, ${c}, ${correct})', req.body)
	.then(function(yo){
		console.log('Siii Siii')
		res.json({status: 'you did it'})
		return next()
	})
	.catch(function(err){
		console.log(err)
		return next(err)
	});
}

function deleteAll(req, res, next) {
	let id = parseInt(req.params.id)
	db.result('delete from qna2 where id = $1', id)
	.then(function(result){
		res.json(result)
	}) 
}

function editQuestion(req, res, next) {
	db.none('update qna2 set question=${question}, a=${a}, b=${b}, c=${c}, correct=${correct} where id = ' + `${req.params.id}`, req.body)
	.then(function(){
		res.json({status: 'we did it'})
	})
	.catch(function(err){
		console.log(err)
		return next()
	})
}






module.exports ={
	getAll: getAll,
	createQuiz: createQuiz,
	deleteAll: deleteAll,
	editQuestion: editQuestion,
}