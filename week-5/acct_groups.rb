#create method with one array of names as a parameter
#divide everyone into groups of 3 people
#add people who don't fit into a group to a group of 3

def group(people)
	new_people = people.shuffle #randomizes array

	return [new_people] if(new_people.length <= 5)

	groups = []

	(new_people.length / 3).times{|i| #integer division leaves off extra
		#Makes a group of 3 people until you can't
		#make a group of 3 anymore.
		new_array = []
		3.times{|j|
			new_array.push(new_people[i*3+j])
		}
		groups.push(new_array)
	}

	(new_people.length % 3).times{|i|#the "extra" people left off
		#Adds the people left off previously by adding
		#them to existing groups of 3.
		groups[i].push(new_people[new_people.length - 1 - i])
	}

	return groups
end

#tests
puts group(["A","B","C"]).to_s
puts group(["A","B","C","D"]).to_s
puts group(["A","B","C","D","E"]).to_s
puts group(["A","B","C","D","E","F"]).to_s
puts group(["A","B","C","D","E","F","G"]).to_s
puts group(["A","B","C","D","E","F","G","H"]).to_s
puts group(["A","B","C","D","E","F","G","H","I"]).to_s
puts group(["A","B","C","D","E","F","G","H","I","J"]).to_s

=begin

Reflection:

What was the most interesting and most difficult part of this challenge?

	The most interesting part of the challenge was figuring out how it could work.
	The most difficult part was translating the pseudocode into actual code.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

	Yes, I have gotten better than I was when I started Ruby.

Was your approach for automating this task a good solution? What could have made it even better?

	This solution would work for a real-life scenario. It could be better by allowing people to switch/join/drop groups.

What data structure did you decide to store the accountability groups in and why?

	I stored accountability groups in an array because the groups didn't have names. If the groups had names, they would need a hash.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

	I learned how to use Array's shuffle method.
	
=end