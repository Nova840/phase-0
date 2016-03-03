# Concatenate Two Arrays
# I worked on this challenge by myself.
# Your Solution Below

def array_concat(array_1, array_2)
	return [] if(array_1.length <= 0 && array_2.length <= 0)

	new_array = [array_1.length + array_2.length]

	0.upto(array_1.length - 1){|i|
		new_array[i] = array_1[i]
	}

	0.upto(array_2.length - 1){|i|
		new_array[array_1.length + i] = array_2[i]
	}

	return new_array
end