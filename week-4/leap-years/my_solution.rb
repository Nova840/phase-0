# Leap Years
# I worked on this challenge with: Patrick DeWitte.
# Your Solution Below

def leap_year?(year)
	if(year % 4 == 0)
		if(year % 100 == 0)
			if(year % 400 == 0)
				return true
			end
		else
			return true
		end	
	end
	return false
end