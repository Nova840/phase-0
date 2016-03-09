# Numbers to Commas Solo Challenge
# I spent [0.1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# Pseudocode:

# What is the input? 
# A positive integer.
# What is the output? (i.e. What should the code return?)
# A string that has the integer separated every 3 decimal places by a comma.
# What are the steps needed to solve the problem?

# Convert the integer to a string.
# starting from the end, every 3 characters add a comma.


def separate_comma(number)
	number = number.to_s #no destructive version

	count = 0
	new_string = ""
	number.split("").reverse.each {|i| #iterates through each character of the number backwards.
		new_string += i
		count += 1
		if(count >= 3) #every 3rd character it adds a comma.
			new_string += ","
			count = 0
		end
	}
	new_string.reverse! #the output of the above loop is in reverse, so fix that

	if(new_string[0] == ","); new_string[0] = "" end #it's possible to have a comma at the beginning, so it checks for that.

	return new_string
end

=begin

Reflection:

What was your process for breaking the problem down? What different approaches did you consider?

	I thought of what exactly I would be doing and each step I would need to do to get the desired result.

Was your pseudocode effective in helping you build a successful initial solution?

	For this challenge I found it more effective to just write it all out in code. I didn't find this challenge very difficult.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

	I used string's split method to divide the string into an array. I didn't have very much difficulty using the ruby docs.

How did you initially iterate through the data structure?

	I used the .each method.

Do you feel your refactored solution is more readable than your initial solution? Why?

	Yes, mostly because I added comments though.

=end