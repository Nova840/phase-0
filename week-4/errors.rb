# Analyze the Errors
# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 169
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# expecting keyword_end
# 5. Where is the error in the code?
# after the puts statement
# 6. Why did the interpreter give you this error?
# the while loop doesn't have an end

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 34
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# south_park is undefined
# 4. Where is the error in the code?
# line 34
# 5. Why did the interpreter give you this error?
# you're not giving south_park a value

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 49
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
# there is no method 'cartman'
# 4. Where is the error in the code?
# line 49
# 5. Why did the interpreter give you this error?
# there is no method 'cartman' to call

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 64
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# 1 argument for a 0 argument method
# 4. Where is the error in the code?
# line 64
# 5. Why did the interpreter give you this error?
# there is no 'cartmans_phrase' method that has 1 parameter

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# 83
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# 0 arguments for a 1 argument method
# 4. Where is the error in the code?
# line 87
# 5. Why did the interpreter give you this error?
# an argument wasn't given to the method



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 104
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# 1 argument for a 2 argument method
# 4. Where is the error in the code?
# line 108
# 5. Why did the interpreter give you this error?
# a name argument wasn't specified

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 123
# 2. What is the type of error message?
# String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# none
# 4. Where is the error in the code?
# line 123
# 5. Why did the interpreter give you this error?
# you need to put the string first to multiply a string

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 138
# 2. What is the type of error message?
# divided by 0
# 3. What additional information does the interpreter provide about this type of error?
# none
# 4. Where is the error in the code?
# line 138
# 5. Why did the interpreter give you this error?
# you can't divide by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 154
# 2. What is the type of error message?
# cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
# the location of the file it attempted to load
# 4. Where is the error in the code?
# line 154
# 5. Why did the interpreter give you this error?
# the file it tried to load doesn't exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

Reflection:

Which error was the most difficult to read?

	String can't be coerced into Fixnum

How did you figure out what the issue with the error was?

	I knew that you had to put the string first from previous experiences.

Were you able to determine why each error message happened based on the code? 

	Yes.

When you encounter errors in your future code, what process will you follow to help you debug?

	I will look at the error message to try to locate the problem.

=end