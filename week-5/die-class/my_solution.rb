# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

=begin

class Die
  def initialize(sides)
  	raise ArgumentError.new("Sides needs to be 1 or more") unless sides >= 1
  	@sides = sides
  end

  def sides
	@sides
  end

  def roll
	rand(@sides) + 1
  end
end

=end

# 3. Refactored Solution

class Die
  def initialize(sides)
  	raise ArgumentError.new("Sides needs to be 1 or more") unless sides >= 1
  	@sides = sides
  end

  attr_reader :sides

  def roll
	rand(@sides) + 1
  end
end

# 4. Reflection
=begin

What is an ArgumentError and why would you use one?

	An ArgumentError is an error that tells you that your arguments are wrong.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

	I used the rand method. I didn't have any difficulty implementing it.

What is a Ruby class?

	A Ruby class is a custom object or blueprint.

Why would you use a Ruby class?

	You would use a Ruby class to repeat a custom behavior.

What is the difference between a local variable and an instance variable?

	A local variable is only accessible in the method you're in while an instance variable is available to the class.

Where can an instance variable be used?

	An instance can be used to store information about the instance of the object.

=end