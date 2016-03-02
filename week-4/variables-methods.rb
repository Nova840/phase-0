puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hello #{first_name} #{middle_name} #{last_name}.\n\n"

puts "What is your favorite number?"
favorite_number = gets.chomp
puts "The number #{favorite_number.to_i + 1} is 1 larger."

=begin
	
4.3.1 Return a Formatted Address:
https://github.com/Nova840/phase-0/blob/master/week-4/address/my_solution.rb

4.3.2 Defining Math Methods:
https://github.com/Nova840/phase-0/tree/master/week-4/math/my_solution.rb

Reflection:

How do you define a local variable?

	name = value

How do you define a method?

	def method_name(parameters)

	end

What is the difference between a local variable and a method?

	A local variables stores a value and a method executes code when called.

How do you run a ruby program from the command line?

	ruby [filename].rb

How do you run an RSpec file from the command line?

	rspec [filename].rb

What was confusing about this material? What made sense?

	I found most of this to be review. I had to look up syntax but other than that it was pretty easy.
	
=end