$('#js-btn').on('click', function(){
 
   $.ajax({
  type: "GET",
  url: "http://ironhack-characters.herokuapp.com/characters",
  success: function(response){
    var text = JSON.stringify(response);
    var names = 
    console.log('success!');
    console.log(text);
      $('#js-result').text(text);
      $('<li class="new">nuevo item de la lista</li>');
  },
  error: function(error){
    console.log("error!");
    console.log(error.text);
  }

});
});


$('#js-btn').on('click', function(){

 $.ajax({
type: "GET",
url: "http://ironhack-characters.herokuapp.com/characters",
success: function(response){
    console.log(response)
    response.forEach(function(item){
        $('#js-result').append('<li>'+item.name+'</li>')
    })
},
error: function(error){
  console.log("error!");
  console.log(error.response);
}

});


var data0 = {name: "Unai Camino", occupation : "no comment", weapon : "1 and big"};

var json = JSON.stringify(data0 ); 


$('#js-btn').on('click', function(){
var name =  $('#js-result');
var json = JSON.stringify(name);
$.ajax({
 type: "POST",
 url: "http://ironhack-characters.herokuapp.com/characters",
 data: json,
 contentType: "application/json; charset=utf-8",
 dataType: "json",
 success: function(msg) {
 alert('In Ajax');
 }
});



