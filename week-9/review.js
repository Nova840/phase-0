/*
Pseudocode:

1. Create a constructor that stores a credit card number.
2. Create functions in the constructor that are the same as
the methods in the other challenge.
3. Create a checkCard function that is accessible from outside
the object to use the functions and data inside the object.

*/

function creditCard(number) {
	if(Math.floor(Math.log10(number)) + 1 !== 16)
		throw "Incorrect number of Digits";

	function doubleOther(number){
		var digits = (""+number).split("");
		var doubled = new Array();
		for(var i in digits){
			doubled.push(+digits[i]);
			if(i % 2 === 0)
				doubled[i] *= 2;
		}
		return doubled;
	}

	function sumDigits(array){
		var sum = 0;
		array.forEach(function(i){
			sum += i % 10;
			if(i > 9)
				sum += Math.floor(i / 10);
		});
		return sum;
	}

	function finalCheck(sum){
		return sum % 10 === 0;
	}

	this.checkCard = function(){
		return finalCheck(sumDigits(doubleOther(number)));
	}
}

card = new creditCard(1234567890123456);
console.log(card.checkCard());
card = new creditCard(4563960122001999);
console.log(card.checkCard());
/*
Reflection:

What concepts did you solidify in working on this challenge? 

	The concept that was most solidified during this challenge was the
	use of constructors in JavaScript.

What was the most difficult part of this challenge?

	The most difficult part of this challenge was trying to figure out
	where the logical errors were when the code wasn't working.

Did you solve the problem in a new way this time?

	It works the name way that the previous code works except I fixed
	the scope for the functions in the creditCard object. In the previous
	challenge, I had made everything have a public scope.

Was your pseudocode different from the Ruby version? What was the same and what was different?

	Not really. I had to change it so that creditCard would be an object instead of a class.

*/