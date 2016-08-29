
var numbers = "80:70:90:100"

function averageColon(numbers){
	numbers.split(":").reduce(function (res, item, idx , array){
		return res + parseInt(item) / array.length;
	}, 0);
} 

console.log(averageColon(numbers));