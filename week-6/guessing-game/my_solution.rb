# Build a simple guessing game
# I worked on this challenge by myself.
# I spent [0.75] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

=begin
class GuessingGame

	def initialize(answer)
		@answer = answer
	end

	def guess(guess)
		@guess = guess
	  	if(@guess > @answer)
	  		@solved = false
	  		return :high
	  	elsif(@guess < @answer)
	  	  	@solved = false
	  		return :low
	  	else
	  		@solved = true
	  		return :correct
	  	end  			
	end

	def solved?
		return @guess == @answer
	end

end
=end

# Refactored Solution

class GuessingGame

	def initialize(answer)
		@answer = answer
	end

	def guess(guess)
		@guess = guess
	  	@solved = false
	  	if(@guess > @answer)
	  		return :high
	  	elsif(@guess < @answer)
	  		return :low
	  	else
	  		@solved = true
	  		return :correct
	  	end  			
	end

	def solved?
		@guess == @answer
	end

end

# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

	Instance variables are information about an object and methods are actions that object can take.

When should you use instance variables? What do they do for you?

	Instance variables are variables that belong to the instance of the class. You should use them for information unique to the instance.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

	Using flow control is forking your code based on a condition. I had no trouble using it in this challenge.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

	The code requires you to return symbols because one symbol is always the same as another symbol with the same value. Two strings of the same value are not necessarily the same string.

=end