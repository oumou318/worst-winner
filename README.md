# Work In Progress Heyayayay! :)

### Description: 
Welcome to the Worst-Winner Trivia Game. In each round, players will be answering a question choosen randomly in a deck of questions/cards. Players will each have 30 seconds to answer the question in the allocated input field. Once time has run out, the Grandmaster reads all the answers and decides which answer he/she likes the best. The answer choosen grants a point to the respective player. That concludes the end of a round. There will be in total five rounds. The player with the most points after 5 rounds wins the game.
##### Instructions: 
There will be essentially three players and one Grandmaster player. In each round the players will rotate and decide who is the next Grandmaster player



### User Stories: 
As a user I want to be able to view a question, then answer it and submit my answer.
### Approach taken:
Come up with an idea where we can implement CRUD. Started on project board, wireframes and question fro the database. 
### Techies Used
* Express- back-end server side, we are calling on the express app to generate the database
* React- front-end side, implement CRUD functionality of the trivia game
* Pg-Promise- querying the database and allowing the usage of SQL commands
* EJS- allows you to have javascript in your HTML, you can create partials.
* Balsamiq- wireframes draw out our app
* Axios- make calls/ request to the express app/api
* Heroku- used to deploy the express app
* Now- hmmm i'm not sure if we will use this but it's another deployment method
* Socketio-auth- authentication for users or in this case the players. doesnt require a database so we dont have to save the username and password
* SQL database- creating the database on the terminal with a seed file
* etc.......