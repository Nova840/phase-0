// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var number
number = 1


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for(var i = 1; i < 8; i++){
	var string = ""
	for(var j = 0; j < i; j++)
		string += "#"
	console.log(string)
}

// Functions

// Complete the `minimum` exercise.

function min(num1, num2){
	return Math.min(num1, num2)
}

console.log(min(2,1))

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = ["Bob", 100, "potato", "carrot", "kiwi", "I'm a hamster."]
console.log(me)

prompt("What is your favorite food?")
console.log("Hey! That's my favorite too!")