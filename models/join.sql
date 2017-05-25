CREATE DATABASE project3;

\c project3;

CREATE TABLE QnA (
	Id SERIAL PRIMARY KEY NOT NULL,
	question TEXT,
	answer_choices TEXT,
	correct TEXT 
);

INSERT INTO QnA (question, answer_choices, correct)
VALUES ('when is my birthday?', '{"A:10", "B:9", "C:11"}', 'A');

CREATE TABLE QnA2 (
	ID SERIAL PRIMARY KEY,
	question TEXT,
	A TEXT,
	B TEXT,
	C TEXT,
	correct TEXT 
);

INSERT INTO QnA2(question, A, B, C, correct)
VALUES ('when is my bday','December 28','February 18','December 18','C'),

('can u help me?', 'yes', 'no', 'maybe', 'A'),

('Who is the Canadian singer-songwriter best known for her hit song, ''Call Me Maybe''?', 'Carly Rae Jepsen', 'Ellie Goudling', 'Avril Lavigne', 'A'),

('Who is the lead singer for the American rock band Pearl Jam?', 'Chris Cornell', 'Eddie Van Halen', 'Eddie Vedder', 'IDK'),

('What is the name of the Seattle grunge band Nirvana''s first album, released in 1989?', 'In Utero', 'Nevermind', 'Bleach', 'C'),

('What was the highest selling album of the 1980s in the United States?', 'Thriller by Michael Jackson', 'Back in Black by AC/DC', 'Born in the U.S.A. by Bruce Springsteen', 'A'),

('True or False: The band Gorillaz is a pun because a group of gorillas are known as a band.', 'TRUE', 'FALSE', '','TRUE'),

('True or False: Kanye West remixed and remade Stronger over 75 times before it was released, due to him being unsatisfied with the drums.', 'TRUE', 'FALSE', '','TRUE'),

('True or False: The Beatles'' Abbey Road was originally going to be called Himalaya, and the album cover would feature them in the Himalayas.', 'TRUE', 'FALSE', '', 'TRUE'),

('Which music group has received the most Grammy Awards?', 'Foo Fighters', 'Coldplay', 'U2', 'C'),

('The most disliked music video on YouTube is _____.', 'Friday by Rebecca Black', 'Baby by Justin Bieber', 'We Can''t Stop by Miley Cyrus', 'B'),

('Which Radiohead album has been cited by musicians as "one of the greatest albums of all time?"', 'In Rainbows', 'The Bends', 'OK Computer', 'C'),

('Which Italian classic tenor became blind at the age of 12 following a football accident?', 'Andrea Boceli', 'Luciano Pavarotti', 'Enrico Caruso', 'A'),

('How many strings does a violin usually have?', '6 strings', '5 strings', '4 strings', 'C'),

('What was Elvis Presley''s first hit in 1956?', 'Jailhouse Rock', 'Heartbreak Hotel', 'Blue Suede Shoes', 'B'),

('Which popular musician brought ATV Music and every Beatles song for $47 million in 1985?', 'Michael Jackson', 'Madonna', 'Jon Bon Jovi', 'A'),

('What singer recorded Age Ain’t Nothing but A Number & One In A Million, before her tragic death in 2001?','Mariah Carey', 'Alicia Keys', 'Aaliyah', 'C'),

('What does the Italian musical term ''adagio'' mean?', 'Quick And Lively', 'Slow Tempo', 'Increasing Volume', 'B'),

('Which famous guitar player was thrown out of school for holding the hand of a white girl in class?', 'B.B. King', 'Jimi Hendrix', 'Chuck Berry', 'B'),

('What band is named after a sculpture in Seattle that hums in the wind?', 'Whirr', 'Pink Floyd', 'Soundgarden', 'C'),

('What is the oldest surviving musical instrument?', 'Flute', 'Drum', 'Cello', 'A'),

('Which musical term means to play a piece of music lovely and fast?', 'Vibrato', 'Allegro', 'Staccato', 'B'),

('Hallelujah is a song written by which Canadian recording artist?', 'Jeff Buckley', 'Joni Mitchell', 'Leonard Cohen', 'C'),

('At what unusual institutions did Johnny Cash record a number of live albums?', 'Prisons', 'Nursing Homes', 'Carnivals', 'A'),

('What was the number one US ringtone of 2005?', 'Hollaback Girl', 'Since U Been Gone', 'Candy Shop', 'C'),

('What is the name of the Hawk in The Royal Tenenbaums?', 'Falco', 'Mordecai', 'Rigby', 'B'),

('Name of Ryan Gosling''s car in Drive?', 'Felicia', 'Malibu', 'Alice', 'B'),

('Who played Gretchen Ross in Donnie Darko?', 'Jena Malone', 'Maggie Gyllenhaal', 'Drew Barrymore', 'A'),

('Bill Murray''s character name in Lost in Translation?', 'Will Pence', 'Charlie Brown', 'Bob Harris', 'C'),

('Which feature song is most commonly associated with ''The Breakfast Club?''', 'Fire in the Twilight', 'Don''t You (Forget About Me)', 'Don''t Stop Believin''', 'B'),

('How many years did it take to film all the vignettes in Boyhood?', '14', '20', '12', 'C'),

('In Trainspotting, who is a violent sociopath?', 'Renton', 'Begbie',  'Sick Boy', 'B'),

('What is the name of the hobbit played by Elijah Wood in the Lord of the Rings movie?', 'Frodo Baggins', 'Legolas', 'Bilbo Baggins', 'A'),


('What is the name of the kingdom where the 2013 animated movie Frozen is set?', 'Neverland', 'Arendelle', 'Avalor', 'B'),


('Who was the first African American actor to win the Academy Award for Best Actor?', 'Denzel Washington', 'Idris Elba', 'Sidney Poitier', 'C'),


('Infamous English prisoner, Charles Bronson, was played by what actor in the 2008 film Bronson?', 'Christian Bale', 'Tom Hardy', 'Ewan Mcgregor', 'B'),


('In the movie Mean Girls, where is Caty originally from?', 'Africa', 'Asia', 'Australia', 'A'),


('What are the names of the three fairies in the Disney classic, Sleeping Beauty?', 'Silvermist, Rosetta, & Fawn', 'Flora, Fauna, & Merryweather', 'The Sugarplum Fairies', 'B'),


('In the 1986 blockbuster "Top Gun", which actress played Goose''s wife?', 'Meg Ryan', 'Kelly McGillis', 'Winona Ryder', 'A'),


('What did the famous Hollywood sign, located in Los Angeles, originally say?', 'Welcome To Hollywood', 'The Finest City In Los Angeles, Hollywood', 'Hollywoodland', 'C'),


('When adjusted for inflation, which is the highest grossing film of all time?', 'Titanic', 'Gone with the Wind', 'Avatar', 'B'),


('What was the first feature film originally presented with sound?', 'The Jazz Singer', 'A Trip To The Moon', 'The Great Dictator', 'A'),


('Which action movie star was the voice of the Iron Giant?', 'Keanu Reeves', 'Tom Cruise', 'Vin Diesel', 'C'),


('What was the first feature length animated film?', 'Fantasia', 'Snow White & The Seven Dwarfs', 'Steamboat Willie', 'B'),


('What star of the movie Basketball Diaries did not win his first Oscar until 2016?', 'Mark Ruffalo', 'Tom Hardy', 'Leonardo DiCaprio', 'C');









