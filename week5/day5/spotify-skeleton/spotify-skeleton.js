$(document).ready(function(){

	function search(song){
	  $.ajax({
	  	type: 'GET',
	    url: 'https://api.spotify.com/v1/search?type=track&limit=1&q=' + song,
	    success: show,
	    error: function(){
	      alert('No song was found');
	    }
	  })
  }; 

  function show(response){
  	var title = response.tracks.items[0].album.name;
  		$('.title').text(title)
  	showImg(response);

  function showImg (response){
  	var img = response.tracks.items[0].album.images[0].url;
  		$('img').prop('src', img)
  	showArtist(response);
  }

  function showArtist(response){
  	var artist =response.tracks.items[0].artists[0].name;
  		$('.author').text(artist)
  		showSong(response);
  }

  function showSong(response){
  	var song = response.tracks.items[0].preview_url;
  		$('audio').prop('src', song)
  		$('.btn-play').click(function(){
  			$('audio').trigger('play')
  				if($('.btn-play').hasClass('disabled')){
  					 $('.btn-play').toggleClass('disabled')	
  				}
			})
  	}
	};

	$('.js-form').on('submit', function(event){
    event.preventDefault();
    var songSearch = $('.js-search').val();
    search(songSearch)
  })
});

	

 
