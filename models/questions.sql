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
VALUES 
	('when is my birthday?'),
	('can u help me?'),
('Who is the Canadian singer-songwriter best known for her hit song, ''Call Me Maybe''?'),
('Who is the lead singer for the American rock band Pearl Jam?'),
('What is the name of the Seattle grunge band Nirvana''s first album, released in 1989?'),
('What was the highest selling album of the 1980s in the United States?'),
('True or False: The band Gorillaz is a pun because a group of gorillas are known as a band.'),
('True or False: Kanye West remixed and remade Stronger over 75 times before it was released, due to him being unsatisfied with the drums.'),
('True or False: The Beatles'' Abbey Road was originally going to be called Himalaya, and the album cover would feature them in the Himalayas.'),
('Which music group has received the most Grammy Awards?'),
('The most disliked music video on YouTube is _____.'),
('Which Radiohead album has been cited by musicians as "one of the greatest albums of all time?"'),
('Which Italian classic tenor became blind at the age of 12 following a football accident?'),
('How many strings does a violin usually have?'),
('What was Elvis Presley''s first hit in 1956?'),
('Which popular musician brought ATV Music and every Beatles song for $47 million in 1985?'),
('What does the Italian musical term "adagio" mean?'),
('Which famous guitar player was thrown out of school for holding the hand of a white girl in class?'),
('What band is named after a sculpture in Seattle that hums in the wind?'),
('What is the oldest surviving musical instrument?'),
('Which musical term means to play a piece of music lovely and fast?'),
('Hallelujah is a song written by which Canadian recording artist?'),
('At what unusual institutions did Johnny Cash record a number of live albums?'),
('What was the number one US ringtone of 2005?'),
('What is the name of the Hawk in The Royal Tenenbaums?'),
('Name of Ryan Gosling''s car in Drive?'),
('Who played Gretchen Ross in Donnie Darko?'),
('Bill Murray''s character name in Lost in Translation?'),
('Which feature song is most commonly associated with ''The Breakfast Club?'''),
('How many years did it take to film all the vignettes in Boyhood?'),
('In Trainspotting, who is a violent sociopath?'),
('What is the name of the hobbit played by Elijah Wood in the Lord of the Rings movie?'),
('What is the name of the kingdom where the 2013 animated movie Frozen is set?'),
('Who was the first African American actor to win the Academy Award for Best Actor?'),
('Infamous English prisoner, Charles Bronson, was played by what actor in the 2008 film Bronson?'),
('In the movie Mean Girls, where is Caty originally from?'),
('What are the names of the three fairies in the Disney classic, Sleeping Beauty?'),
('In the 1986 blockbuster "Top Gun", which actress played Goose''s wife?'),
('What did the famous Hollywood sign, located in Los Angeles, originally say?'),
('When adjusted for inflation, which is the highest grossing film of all time?'),
('What was the first feature film originally presented with sound?'),
('Which action movie star was the voice of the Iron Giant?'),
('What was the first feature length animated film?'),
('What star of the movie Basketball Diaries did not win his first Oscar until 2016?');

	


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
	true),

('a', 'yes', '2', true),('b', 'no', '2', false),

('A', 'Carly Rae Jepsen', '3', TRUE), 
('B', 'Ellie Goudling', '3', FALSE), 
('C', 'Avril Lavigne', '3', FALSE),

('A', 'Chris Cornell', '4', FALSE),
('B', 'Eddie Van Halen', '4', FALSE), 
('C', 'Eddie Vedder', '4', FALSE),

('A', 'In Utero', '5', FALSE), 
('B', 'Nevermind', '5', FALSE), 
('C', 'Bleach', '5', TRUE),

('A', 'Thriller by Michael Jackson', '6', TRUE),
('B', 'Back in Black by AC/DC', '6', FALSE),
('C', 'Born in the U.S.A. by Bruce Springsteen', '6', FALSE), 

('A', 'True', '7', TRUE), 
('B', 'False', '7', FALSE),

('A', 'True', '8', TRUE), 
('B', 'False', '8', FALSE), 

('A', 'True', '9', TRUE),
('B', 'False', '9', FALSE),

('A', 'Foo Fighters', '10', FALSE), 
('B', 'Coldplay', '10', FALSE),
('C', 'U2', '10', TRUE),
    
('A', 'Friday by Rebecca Black', '11', FALSE),
('B', 'Baby by Justin Bieber', '11', TRUE),
('C', 'We Can''t Stop by Miley Cyrus', '11', FALSE),
    
('A', 'In Rainbows', '12', FALSE),
('B', 'The Bends', '12', FALSE),
('C', 'OK Computer', '12', TRUE),
    
('A', 'Andrea Boceli', '13', TRUE),
('B', 'Luciano Pavarotti', '13', FALSE),
('C', 'Enrico Caruso', '13', FALSE),
    
('A', '6 strings', '14', FALSE),
('B', '5 strings', '14', FALSE),
('C', '4 strings', '14', TRUE),

('A', 'Jailhouse Rock', '15', FALSE),
('B', 'Heartbreak Hotel', '15', TRUE),
('C', 'Blue Suede Shoes', '15', FALSE),
    
('A', 'Michael Jackson', '16', TRUE),    
('B', 'Madonna', '16', FALSE),
('C', 'Jon Bon Jovi', '16', FALSE);

DECLARE @choices_for int;
SET @id = 
select questions.question, answers.choices, answers.letter, answers.choice_for, answers.correct
from questions
JOIN answers ON questions.questionID = answers.choice_for
WHERE questions.questionID = 1;







