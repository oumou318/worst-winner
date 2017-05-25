# BAO! - PROJECT #3
-----------
### 1-BAO is a card game much like Cards Against Humanity. In each round, players will be answering a question choosen randomly in a deck of questions/cards. Players will each have 30 seconds to answer the question in the allocated input field. Once time has run out, the Grandmaster reads all the answers and decides which answer he/she likes the best. The answer choosen grants a point to the respective player. That concludes the end of a round. There will be in total five rounds. The player with the most points after 5 rounds wins the game.



2nd Idea consist of two players, creater and user(friend) (come up with better names for them). the creater will have the opportunity?? to populate input fields with one question and up to three answers. One of the inputs for the answers will be a special input field because it holds the correct answer. Once they are done writing the question, they can submit the form. The form will rerender on the page and they can edit it if they want to and submit again. When the creater is done finally submitting, the user can come and try to answer the question. They can delete the ones they think are wrong and submit the one remaining answer. If it is the right answer then, a prompt will appear and the same goes for when the answer is wrong.



## MVP Consist of 
    1. create a database with two tables populated with couple of examples. One table for questions and another for the answers then joining the tables 
    2. CRUD plan
        * C ----> Create a question, answers and submit
        * R ----> Render the submitted data
        * U ----> Update/Edit while you are creating
        * D ----> Delete the answers you think are wrong
    3. Implementing the plan to become functional
        * Create components on React question, question count, answer options, and result


### Instructions
----------
There will be essentially three players and one Grandmaster player. In each round the players will rotate and decide who is the next Grandmaster player

## Mockups & Wireframaes
----------

![Alt Image](http://i.imgur.com/mWAnOFJ.png)

![Alt Image](http://i.imgur.com/oUev6qY.png)

![Alt Image](http://i.imgur.com/DsILfWx.png)

![ERD] (https://www.lucidchart.com/publicSegments/view/57b26c1d-424d-4e45-a746-26ae19efe512/image.jpeg)

## User Stories
----------
As a user, I want a random BAO card to render on the screen. This card is then read out loud. The other players will then click on the other, smaller cards rendered and the Grandmaster will then pick a card that best fits.

As a user, I’d like to have a score be kept on each player so as to keep track of a winner.

As a user, i'd like to be able to win based on my score.

## Components and their global purpose
----------
(Placeholder) Title and Description ——>Just the app’s name and it’s purpose.

(Placeholder)——>Holds the text describing how to play the game.

(Placeholder) div containing random BAO card—> 

(Placeholder) divs containing cards that will be selected by grandmaster.

Technologies Used / NPM Modules
-----------
* CSS
* JavaScript
* PostGres
* Express (Deployed with Heroku)
    * Dependencies used:
        * Nodemon - Auto-refresh the server on code change.
        * Axios - Promise based HTTP client for the browser and node.js.
        * EJS - Client-side templating language 
        * PG-Promise - promise based library that allows to query your database using Javascript.
        * Bluebird - Bluebird is a fully featured JavaScript promises library
        * CORS - Cross-origin resource sharing (CORS) is a mechanism 
* React (Deployed with Now) - Build encapsulated components that manage their own state, then compose them to make complex UIs. 
* React Bootstrap - Front-end framework, rebuilt for React.
    * Dependencies used:
        * React-Router - Declarative routing for React.
        * Create-React-App - 

Download Project & Install
----------------
Git clone or download this project and cd into via terminal. On your terminal run npm run dev, app should be available on localhost:3000 
