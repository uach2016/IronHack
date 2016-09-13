if (window.PokemonApp === undefined) {
	window.PokemonApp = {};
}

PokemonApp.init = function () {
	console.log("PokemonApp Online");
};


PokemonApp.idFromUri = function (pokemonUri){
	// http://pokeapi.co/api/v2/pokemon/1/
	var uriSegments = pokemonUri.split("/");
	// uriSegments = ["http:", "", "pokeapi.co", "api", "v2", "pokemon", "1", ""]
	var secondLast = uriSegments.length - 2;
	// secondLas = 6
	return uriSegments[secondLast];
	// return uriSegments[6]
}

$(document).on("ready", function (){
	PokemonApp.init();
});
