def get_grade(grades)
	average = grades.inject { |mem, var|  mem + var}.to_f / grades.size
	if average >= 90
		return "A"
	elsif average >= 80
		return "B"
	elsif average >= 70
		return "C"
	elsif average >= 60
		return "D"
	else
		return "F"
	end
end