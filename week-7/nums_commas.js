// Pseudocode

//separate numbers into an array
//iterate through the array backwards, adding a comma every 3 elements
//remove a comma if it is in the front

// Initial Solution
/*
function separateComma(number){
	var reverseNumberArray = number.toString().split("").reverse()
	var newArray = []
	for(var i = 0; i < reverseNumberArray.length; i++){
		newArray.push(reverseNumberArray[i])
		if(i % 3 === 2)
			newArray.push(",")
	}
	if(newArray[newArray.length - 1] === ",")
		newArray.splice(newArray.length - 1, 1)
	return newArray.reverse().join("")
}
*/
// Refactored Solution

function separateComma(number){
	var reverseNumberArray = number.toString().split("").reverse()
	var newArray = []
	for(var i = 0; i < reverseNumberArray.length; i++){
		if(i !== 0 && i % 3 === 0)
			newArray.push(",")
		newArray.push(reverseNumberArray[i])
	}
	return newArray.reverse().join("")
}

// Tests

console.log(separateComma(10))
console.log(separateComma(100))
console.log(separateComma(1000))
console.log(separateComma(10000))
console.log(separateComma(100000))
console.log(separateComma(1000000))
console.log(separateComma(10000000))

// Reflection