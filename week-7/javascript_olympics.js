// JavaScript Olympics
// I paired with David Ramirez on this challenge.
// This challenge took me [1] hour.


// Bulk Up

var athlete1= {
    name: "Micheal",
    event: "Swimming event"
}
var athlete2 = {
    name: "Sarah ",
    event: "Ladies' Singles"
}
var athleteArray = [athlete1, athlete2]

function win(athlete){
    for(var i = 0; i < athlete.length; i++){
        athlete[i].win = (athlete[i].name + " won " + athlete[i].event + "!")
        console.log(athlete[i].win)
     }
}
win(athleteArray)


// Jumble your words

function reverse(word) {
    return word.split("").reverse().join("")
}
console.log(reverse("string"))


// 2,4,6,8

function evenNumbers(numbers){
	var evens = []
	for(var i = 0; i < numbers.length; i++)
		if(numbers[i] % 2 === 0)
			evens.push(numbers[i])
	console.log(evens)
	return evens
}

evenNumbers([1,2,3,4,5,6])
// "We built this city"

var Athlete = function Athlete(name, age, sport, quote){
	this.name = name
	this.age = age
	this.sport = sport
	this.quote = quote
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection