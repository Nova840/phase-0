# Calculate the mode Pairing Challenge
# I worked on this challenge with: Gabriel Zurita.
# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# group of numbers = [1, 1, 2, 3, 4]
# most common = return an array with a 1 in it.

# What is the input?
# a group of integers or strings (an array)
# What is the output? (i.e. What should the code return?)
# an array of the most commonly used integers or strings
# What are the steps needed to solve the problem?
# method will iterate through the group of numbers (array) and count the number of instances the number appears
# 1. define the method and have it iterate through said array.
# 2. will have to add items to hash in order for the array to iterate.

def mode(array)
	counts = Hash.new(0)
 	array.each do |i|
 		#iterate over elements in array
 		counts [i] += 1
 		#count the instances
 	end

	highest = 0
	counts.each do |i,v|
		if(highest < v)
			highest = v
			#find highest count in counts
		end
	end

	new_array = []
	counts.each do |i,v|
		if(highest == v)
			new_array.push(i)
			#push all of the highest counts into an array
		end
	end

 	return new_array
 end


# 4. Reflection
=begin

Which data structure did you and your pair decide to implement and why?

	We implemented a hash to keep track of the items and number of occurrences.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

	I think the last problem was easier to put into pseudocode.

What issues/successes did you run into when translating your pseudocode to code?

	We didn't know exactly how to what we said to do in the pseudocode.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

	We used the .each method to iterate through content. It was pretty straightforward.

=end