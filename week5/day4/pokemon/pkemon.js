$(document).ready(function(){

  	var allPokemons = [];

   	function getInformation(id){
   		$.ajax({
	      url: 'Http://pokeapi.co/api/v2/pokemon/' + id,
	      type: 'GET',
	      success: showDetails,
	      error: function(){
	        alert('something is going wrong');
	      }
    	})
   	};

  	function showDetails(response){
	   	var htmlName = '<h2>name: '+ response.name +'</h2>';
	   	$('.name').append(htmlName);
				for (var i=0; i<response.types.length; i++){
		   		var pokemonType = response.types[i].type.name;
		   		var htmlTypes = '<p class="type">type : ' + response.types[i].type.name + '</p>';
	  		$('.type').append(htmlTypes);
  			}  
  		addPokemon(response);
  	};

  	function addPokemon(pokemon){
  		allPokemons.push(pokemon);
  	}

  	function findByType (type){
  		var type = type
  		var x = allPokemons;
  		for (var i=0 in x) {
  				console.log(x.types[i]);
			};
  	};

	$('.card1').on('submit', function(event){
	 	event.preventDefault();
		var id = $('.search').val();
		getInformation(id)
	  });

	 $('.card2').on('submit', function(event){
		 event.preventDefault();
		 var pokemonType = $('.searchByType').val();
		 findByType(pokemonType);
	   });
});