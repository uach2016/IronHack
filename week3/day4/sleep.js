function sleep(timeInSeconds, fn){
	setTimeout(fn, timeInSeconds*1000);
}
sleep(5, function(){
	console.log("it's been 5s");
});

