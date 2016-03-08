# Pad an Array

# I worked on this challenge with: Allison Paul.

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array of positive integers, number of items in the array, padded value
# What is the output? (i.e. What should the code return?) The array padded
# What are the steps needed to solve the problem?
#Define a method that accepts positive integers
# If array >= numer of items print the array
#If array has less than they minimum number
#fill the default values into the array to meet the minimum number
#return the array
# in pad! alter the original array, in pad keep the origin array and return the new padded array.


# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) #destructive
	if(array.length >= min_size)
	return array 

	else

	0.upto(min_size - array.length - 1) { |i|
		array.push(value)
	}
	end
	return array
end

def pad(array, min_size, value = nil) #non-destructive
	new_array = []
	array.each{|i|
		new_array.push(i)
	}
	if(new_array.length >= min_size)
	p new_array 

	else

	0.upto(min_size - new_array.length - 1) { |i|
		new_array.push(value)
	}
	end
	p new_array
end
=end
# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
	
	return array if(array.length >= min_size)

	0.upto(min_size - array.length - 1) { |i|
		array.push(value)
	}
	return array
end

def pad(array, min_size, value = nil) #non-destructive
	new_array = []
	array.each{|i|
		new_array.push(i)
	}
	
	return new_array if(new_array.length >= min_size)

	0.upto(min_size - new_array.length - 1) { |i|
		new_array.push(value)
	}
	return new_array
end

# 4. Reflection
=begin

Reflection:

Were you successful in breaking the problem down into small steps?

	Yes, we erote those steps in the pseudocode.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

	We were able to translate it into code pretty easily. The most difficult part was the ruby syntax.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

	My initial solution didn't pass the tests. we were trying to assign the new array to the original array and we needed to make a new array and move over all of its values.

When you refactored, did you find any existing methods in Ruby to clean up your code?

	We used a single-line if statement to make it shorter.

How readable is your solution? Did you and your pair choose descriptive variable names?

	We chose descriptive variable names. We could have made it mode descriptive by adding comments.

What is the difference between destructive and non-destructive methods in your own words?

	Destructive methods can modify their original arguments and non-destructive methods can't.

=end