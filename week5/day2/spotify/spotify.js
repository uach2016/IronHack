$(document).ready(function(){

  $('.js-form').on('submit', function(event){
    event.preventDefault();
    var artistName = $('.js-artist').val();
    searchArtist(artistName)
  })

  function searchArtist(artistName){
    $.ajax({
      url: 'https://api.spotify.com/v1/search?type=artist&query=' + artistName,
      type: 'GET',
      success: showImg,
      error: function(){
        alert('Algo va mal madafaka');
      }
    })
  }; 

  function showImg(response){
        response.artists.items.forEach(function(artist){
          if (artist.images[0]) { 
          $('.js-list').append('<li class="js-name" data-id=' + artist.id + '><a class="name" href="">' + artist.name+'</a> <img src="'+ artist.images[0].url + '"></li>')
          } else {
          $('.js-list').append('<li class="js-name">' + artist.name  +'</li>')  
          }       
        })
  };

  $('.js-list').on('click', '.js-name', function(event) {
    event.preventDefault()
    var id = $(this).data('id');
    console.log(id)
    searchAlbum(id);
  }) 


  function searchAlbum(id) {
    $.ajax({
      url: 'https://api.spotify.com/v1/albums/'+ id,
      success: formatAlbum,
      error: function() {
        console.log('fatal error!!!')
      },
    });
  };

  function formatAlbum(albums) {
    albums.albums.items.forEach(function displayAlbum (album) {
      var albumName = album.name;

      var html = [

        '<li>'+albumName+'</li>',
      

      ].join('\n');

      $('.js-album').append(html);
      });
  };

 })