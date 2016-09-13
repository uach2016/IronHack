var price = 13;

$('.btn-pepperonni').on('click', function(){
  $('.pep').toggle();
	if($('.btn-pepperonni').hasClass('active')){
    price -= 1;
  } else {
    price += 1;
  };
  $('.panel.price strong').text('$' + price);

  $('.btn-pepperonni').toggleClass('active');
  $('.panel.price ul li').eq(0).toggle();
});


$('.btn-mushrooms').on('click', function(){
  $('.mushroom').toggle();
	if($('.btn-mushrooms').hasClass('active')){
    price -= 1;
  } else {
    price += 1;
  };
  $('.panel.price strong').text('$' + price);

  $('.btn-mushrooms').toggleClass('active');
$('.panel.price ul li').eq(1).toggle();
});


$('.btn-green-peppers').on('click', function(){
  $('.green-pepper').toggle();
	if($('.btn-green-peppers').hasClass('active')){
    price -= 1;
  } else {
    price += 1;
  };
  $('.panel.price strong').text('$' + price);

  $('.btn-green-peppers').toggleClass('active');
$('.panel.price ul li').eq(2).toggle();
});


$('.btn-crust').on('click', function(){
  $('.crust').toggleClass('crust-gluten-free');
	 if($('.btn-crust').hasClass('active')){
    price -= 5;
  } else {
    price += 5;
  };
  $('.panel.price strong').text('$' + price);

  $('.btn-crust').toggleClass('active');

$('.panel.price ul li').eq(3).toggle();
});


$('.btn-sauce').on('click', function(){
  $('.sauce').toggleClass('sauce-white');
	if($('.btn-sauce').hasClass('active')){
    price -= 3;
  } else {
    price += 3;
  };
  $('.panel.price strong').text('$' + price);

  $('.btn-sauce').toggleClass('active');
$('.panel.price ul li').eq(4).toggle();
});
