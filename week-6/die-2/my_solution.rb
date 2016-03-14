# Die Class 2: Arbitrary Symbols
# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of objects
# Output: One of those objects selected randomly
# Steps:

# Initialize:
# raise an ArgumentError if the array is empty.
# save the array as a class variable

# Sides:
# return the length of the array.

# Roll:
# return a random element of the array.


# Initial Solution

=begin
class Die
  def initialize(labels)
  	raise ArgumentError.new("\"Labels\" array is empty.") if labels.empty?
  	@labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[rand(@labels.length)]
  end
end
=end

# Refactored Solution

class Die
  def initialize(labels)
  	raise ArgumentError.new("\"Labels\" array is empty.") if labels.empty?
  	@labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[rand(sides)]
  end
end

# Reflection
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

	No, I did not need to change very much from the old die class.

What does this exercise teach you about making code that is easily changeable or modifiable? 

	Making code that can be easily modified will save you time and be a lot cleaner.

What new methods did you learn when working on this challenge, if any?

	I did not learn any new methods during this challenge.

What concepts about classes were you able to solidify in this challenge?

	I've never called a method from inside another method in ruby until now.

=end