# Introduction to Inheritance

# I worked on this challenge by myself.


# Pseudocode




# Initial Solution
=begin
require "date"

class GlobalCohort

	def initialize(students, name, p0_start_date, email_list)
		if(students.length != email_list.length)
			raise ArgumentError.new("Email list size different that number of students.")
		end
		@students = students
		@num_of_students = students.length
		@name = name
		@p0_start_date = p0_start_date
		@immersive_start_date = p0_start_date + (7*9)
		@graduation_date = p0_start_date + (7*18)
		@email_list = email_list
	end

	attr_reader :students, :num_of_students, :name, :p0_start_date, :immersive_start_date,
		:graduation_date, :email_list

	def add_student(name, email)
		@students.push(name)
		@email_list.push(email)
		@num_of_students = students.length
	end

	def remove_student(name)
		@email_list.delete_at(@students.index(name))
		@students.delete(name)
		@num_of_students = students.length
	end

	def currently_in_phase
		if(@p0_start_date > Date.today)
			return -1
		end
		if(immersive_start_date > Date.today)
			return 0
		end
		if(graduated?)
			return -1
		end
		if((immersive_start_date + (7*3)) > Date.today)
			return 1
		elsif((immersive_start_date + (7*6)) > Date.today)
			return 2
		else
			return 3
		end
	end

	def graduated?
		return @graduation_date < Date.today
	end
end

class LocalCohort < GlobalCohort

	def initialize(city, students, name, p0_start_date, email_list)
		super(students, name, p0_start_date, email_list)
		@city = city
	end

	attr_reader :city

end
=end
# Refactored Solution

require "date"

class GlobalCohort

	def initialize(students, name, p0_start_date, email_list)
		if(students.length != email_list.length)
			raise ArgumentError.new("Email list size different that number of students.")
		end
		@students = students
		@num_of_students = students.length
		@name = name
		@p0_start_date = p0_start_date
		@immersive_start_date = p0_start_date + (7*9)
		@graduation_date = p0_start_date + (7*18)
		@email_list = email_list
	end

	attr_reader :students, :num_of_students, :name, :p0_start_date, :immersive_start_date,
		:graduation_date, :email_list

	def add_student(name, email)
		@students.push(name)
		@email_list.push(email)
		@num_of_students = students.length
	end

	def remove_student(name)
		@email_list.delete_at(@students.index(name))
		@students.delete(name)
		@num_of_students = students.length
	end

	def currently_in_phase
		return -1 if(@p0_start_date > Date.today || graduated?)

		return 0 if(immersive_start_date > Date.today)

		return 1 if((immersive_start_date + (7*3)) > Date.today)
			
		return 2 if((immersive_start_date + (7*6)) > Date.today)
		
		return 3
	end

	def graduated?
		@graduation_date < Date.today
	end
end

class LocalCohort < GlobalCohort

	def initialize(city, students, name, p0_start_date, email_list)
		super(students, name, p0_start_date, email_list)
		@city = city
	end

	attr_reader :city

end

# Driver Code

local = LocalCohort.new("Nowhere", ["Student 1", "Student 2"], "Potatoes",
	Date.new(2016, 1, 10), ["Email 1", "Email 2"])
p local.name
p local.city
p local.currently_in_phase
p local.graduated?
p local.students
local.add_student("Bob", "Bob's Email")
p local.students
p local.email_list
p local.num_of_students
local.remove_student("Student 2")
p local.students
p local.email_list
p local.num_of_students

=begin

Reflection:

What concepts did you review in this challenge?

	I reviewed how to use attr_reader and instance variables.

What is still confusing to you about Ruby?

	I still might not know some things about inheritance.

What are you going to study to get more prepared for Phase 1?

	I will review inheritance and overriding methods.

=end