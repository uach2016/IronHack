var Car = function cars(model, noise){
	
	this.model = model;
	this.noise = noise;
    this.wheels=4
	
	
	this.sayModel = function(){

	console.log(this.model);
	
	};
	
	this.makeNoise = function (){
		console.log(this.noise);
	};

};

var ford = new Cars("ford", "jhjlbljnn");
ford.makeNoise();
ford.sayModel();

var mercedes = new Cars("mercedes",  "mmmmmmmmmmmmmmmm");
mercedes.makeNoise();
mercedes.sayModel();

