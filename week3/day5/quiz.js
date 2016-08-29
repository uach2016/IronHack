var read = require('read');


var User = function (name){
  this.name = name
}


var Question = function(text, answer, id){
  this.text = text;
  this.answer = answer;
  this.id = id;
}


var Quiz = function (questions, user) {
    this.questions = questions
    this.user = user
    this.index = 0
    
    this.welcome = function () {
      console.log("Welcome " + user.name);
        this.start();   
    }
  
    this.start =function() {
      console.log(this.questions[this.index].text);
      this.recieveQuestion(this.questions[this.index].text, this.questions[this.index].answer);
    }

    this.recieveQuestion = function(question, answered){
      var getThis = this;
      var options = {promp: question}
      read(options, function(err, answer){
        if(getThis.index === 4){
          console.log("YOU WIN, you are very clever, my friend")
        }
        else if (answered === answer){
          console.log("Congratulations my friend, go to the next level")
          getThis.index++;
          getThis.start();
        }
        
        else{
          console.log("I knew you didn't know it, GO HOME")
        }
      });
    }
}
    
  


var yo = new User("unai");
var question1 = new Question("What's the capital of Spain", "Madrid", 1);
var question2 = new Question("What's the capital of Englan", "London", 2);
var question3 = new Question("What's the capital of Germany", "Berlin", 3);
var question4 = new Question("What's the capital of Russia", "MosKow", 4);
var question5 = new Question("What's the capital of Benamocarra", "doesn't have", 5);
var questions = [question1, question2, question3, question4, question5]
var play = new Quiz(questions, yo);
play.welcome();
