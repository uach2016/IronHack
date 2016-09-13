// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
//Constructor que recibe una url y saca un id a partir de ella
PokemonApp.Pokemon = function (pokemonUri){
	this.id = PokemonApp.idFromUri(pokemonUri);
};

PokemonApp.Pokemon.prototype.render = function(){
	console.log("Rendering pokemon: #" + this.id);


	$.ajax({
		url: "/api/pokemon/" + this.id,
		success: function(response){
			$(".js-pkmn-name").text(response.name);
			$(".js-pkmn-number").text(response.pkdx_id);
			$(".js-pkmn-height").text(response.height);
			$(".js-pkmn-weight").text(response.weight);

			console.log('showing modal...')
			$(".js-pokemon-modal").modal("show");
		}
	});
};


$(document).on("ready", function (){
	$(".js-show-pokemon").on("click", function(event){
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");
		var pokemon = new PokemonApp.Pokemon(pokemonUri);

		pokemon.id;
		pokemon.render();
	});
});