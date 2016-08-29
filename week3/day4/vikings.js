function getRandom(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

var Viking = function (name){
    this.name = name;
    this.health = getRandom(0, 100);
    this.strength = getRandom(0, 50);
}
    
    
 function fight(attacker,victim){
    victim.health -= attacker.strength;
}
    
 function pit(viking_partner, viking, turns_amount){
         var turn = 1;
         var fighting = true;
         while ( turn <= turns_amount && fighting) {
            if(viking.health - viking_partner.strength <=2 ){
            fighting = false;
                console.log("ok you win " + viking_partner.name);
            }
            else if(viking_partner.health - viking.strength <=2 ){
            fighting = false;
                console.log("ok you win " + viking.name);
            }
             else if((viking.health - viking_partner.strength >2 )||(viking_partner.health - viking.strength >2 )){
                fight(viking, viking_partner);
                console.log(viking_partner.name+" atack. "+ viking.name+" health:"+viking.health)
            }
         }

    turn +=1
}

function assult(saxons, viking){
         var turn = 1;
         var maxTurns = getRandom(5, 8);
         var saxon = saxons[Math.floor(Math.random()*saxons.length)];
         var fighting = true;
         while ( turn <= maxTurns && fighting) {
            if(saxon.health - viking.strength < 0){
            fighting = false;
                console.log("die");
            }
            else if(viking.health - saxon.strength < 0){
            fighting = false;
                console.log("die");
            }
            else if((saxon.health - viking.strength >=0 )||(viking.health - saxon.strength >=0 )){
            fight(saxon, viking);
                 console.log(viking.name+" atack. "+ saxon.name+" health:"+saxon.health)}
         }
         turn +=1
     }
    
    



var saxon0 = new Viking("saxon");
var saxon1 = new Viking("saxon");
var saxon2 = new Viking("saxon");
var saxon3 = new Viking("saxon");
var saxon4 = new Viking("saxon");

var saxons = [saxon0, saxon1, saxon2, saxon3, saxon4]

var viking1 = new Viking("Barbaroja");
var viking2 = new Viking("Conan");


pit(viking2, viking1, 20);
assult(saxons, viking1);

pit(viking1, viking2, 10);
assult(saxons, viking2);




