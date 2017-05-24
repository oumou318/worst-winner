DROP DATABASE IF EXISTS quiz;

CREATE DATABASE quiz;

\c quiz;

CREATE TABLE questions (
    questionID SERIAL PRIMARY KEY NOT NULL,
    question VARCHAR
);

CREATE TABLE answers (
	answerID SERIAL PRIMARY KEY,
	letter TEXT,
	choices TEXT,
	choice_for INTEGER REFERENCES questions(questionID),
	correct BOOLEAN

);

INSERT INTO questions (question)
VALUES (
	'when is my birthday?',
	'can u help me?'
	
);

-- DECLARE @questionID INT = SCOPE_IDENTITY()

INSERT INTO answers (letter, choices, choice_for, correct)
VALUES(
	'A',
	'December 28',
	'1',
	false
),

(	'B',
	'February 18',
	'1',
	false
),

(	'C',
	'December 18',
	'1',
	true
),
('a', 'yes', '2'),
('b', 'no', '2');


select questions.question, answers.choices, answers.letter, answers.choice_for, answers.correct
from questions
JOIN answers ON questions.questionID = answers.choice_for
WHERE questions.questionID = ;







