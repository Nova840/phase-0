# Attr Methods
# I worked on this challenge by myself.
# I spent [1] hours on this challenge.

# Pseudocode

# Input: NameData: name, Greetings: none
# Output: Greetings.hello puts a message with the NameData's name.
# Steps:

# The NameData class should take in and store a name.
# When a Greetings instance is made, create an instance of NameData.
# The hello method should puts the name in the Greeting's NameData along with a message.

class NameData

	attr_reader :name

	def initialize(name)
		@name = name
	end

end


class Greetings

	def initialize
		@name_data = NameData.new("Adam")
	end

	def hello
		puts "Hello #{@name_data.name}"
	end

end

Greetings.new.hello

# Reflection
=begin

Release 1:

What are these methods doing?

	The methods are making an instance variable accessible to a larger scope.

How are they modifying or returning the value of instance variables?

	They are just returning the value of modifying the value directly within a method in that instance of the class.


Release 2:

What changed between the last release and this release?

	The age variable is being read by .age rather than .what_is_age.

What was replaced?

	The what_is_age method was replaced by an attr_reader.

Is this code simpler than the last?

	Yes.


Release 3:

What changed between the last release and this release?

	The age variable is being modified by .age rather than .change_my_age.

What was replaced?

	The change_my_age method was replaced by an attr_writer.

Is this code simpler than the last?

	Yes.


Release 6:

What is a reader method?

	The reader method lets you retrieve a value, but not modify it.

What is a writer method?

	The writer method lets you modify a value, but not retrieve it.

What do the attr methods do for you?

	The attr methods make your code a lot neater by reducing the amount of code you have to write.

Should you always use an accessor to cover your bases? Why or why not?

	You should use an accessor only when you want to be able to read and write to the variable.

What is confusing to you about these methods?

	I'm not very confused about these methods.

=end