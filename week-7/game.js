// Design Basic Game Solo Challenge
// This is a solo challenge

// Your mission description:
// Overall mission: Get to 100 coins.
// Goals: Get coins without your health reaching 0.
// Characters: Mario, Luigi
// Objects: Player 1, Player 2
// Functions: Add coin, lose health.

// Pseudocode
//create player objects with a health, coins, and name.
//give each player functions to add coind or lose health.
//if a player's health drops to 0, they lose.
//if a player's coins reaches 100, they win.

// Initial Code

player1 = {}
player1.name = "Mario"
player1.health = 100
player1.coins = 0
player1.addCoins = function(amount){
	this.coins += amount
	if(this.coins >= 100)
		console.log(this.name + " wins!")
}
player1.loseHealth = function(amount){
	this.health -= amount
	if(this.health <= 0)
		console.log(this.name + " dies.")
}

player2 = {}
player2.name = "Luigi"
player2.health = 100
player2.coins = 0
player2.addCoins = function(amount){
	this.coins += amount
	if(this.coins >= 100)
		console.log(this.name + " wins!")
}
player2.loseHealth = function(amount){
	this.health -= amount
	if(this.health <= 0)
		console.log(this.name + " dies.")
}

// Refactored Code

player = {
	name: "Player",
	coins: 0,
	health: 100,
	addCoins: function(amount){
		this.coins += amount
		if(this.coins >= 100)
			console.log(this.name + " wins!")
	},
	loseHealth: function(amount){
		this.health -= amount
		if(this.health <= 0)
			console.log(this.name + " dies.")
	}
}

player1 = Object.assign(new Object(), player)
player1.name = "Mario"

player2 = Object.assign(new Object(), player)
player2.name = "Luigi"

player2.loseHealth(100)
player1.addCoins(100)

// Reflection
/*

What was the most difficult part of this challenge?

	The most difficult part of this challenge was using javascript syntax.

What did you learn about creating objects and functions that interact with one another?

	I learned how to use the this keyword.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

	Object.assign assigns all of the values on one object onto another.

How can you access and manipulate properties of objects?

	You use the dot operator to access and manipulate properties of objects.

*/