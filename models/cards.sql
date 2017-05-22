DROP DATABASE IF EXISTS cards;

CREATE DATABASE cards;

\c cards;

CREATE TABLE deck (
    ID SERIAL PRIMARY KEY,
    questions TEXT
);

INSERT INTO deck (questions)
VALUES ('Congrats on becoming a superhero! You can now _____.'),
('You''re stranded on an island. Your only tool for survival is _____.'),
('You just clogged your friend''s toilet. Now they''re knocking on the door. You _____.'),
('Turns out the flea market psychic was right! She said _____.'),
('I _____ before Leonardo DiCaprio got an Oscar.'),
('I''d rather _____ than use Bing as my default Browser.'),
('I can''t stop _____. What''s wrong with me?'),
('_____ used _____! It''s not very effective...'),
('Hello sir! Would you like to know about the gospel of _____?'),
('If only Kendall Jenner gave _____ a Pepsi.'),
('After _____, Britney Spears decided to shave her head.'),
('OJ Simpson also had _____ in the back of his Bronco.'),
('Sorry, dad. I got a tattoo of _____.'),
('What is _____? Baby don''t hurt me.'),
('I''l tell you how I became the _____ of a town called Bel-Air.'),
('John Green books are for _____.'),
('Turns out I''m the only one who brought _____ to the party.'),
('And I would''ve got away with it too, if it weren''t for _____.'),
('Sitting through a Tyler Perry film feels like _____.'),
('Virgil then guided Dante to the 10th circle of hell, where sinners are condemned to an enternity of _____.'),
('This year, _____ is on Oprah''s list of favorite things.'),
('If you _____, then you''re the only person in the world that liked Windows Vista.'),
('General Assembly taught me _____.'),
('_____ is more talented than Taylor Swift.'),
('Make a Japanese poem, containing three lines - each with five, seven, and five syllables. If you''d like to be a smart aleck, you may call it a haiku.');