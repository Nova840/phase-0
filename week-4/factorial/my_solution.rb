# Factorial
# I worked on this challenge with: Buck Melton.

# Your Solution Below
def factorial(number)
	#initalize answer to number
	#loop from number-1 down to 0 decrementing 1 every time.
	#answer = answer * iterator
	#end loop when iterator less than or equal to 0
	#return answer

	return 1 if(number == 0)
	answer = number
	(number-1).downto(1){|i|
		answer *= i
	}
	return answer
end