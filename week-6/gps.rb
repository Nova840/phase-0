# Your Names
# 1) Adam Zmudzinski
# 2) 

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, num_of_ingredients)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   # error_counter = 3
#   #Creates a hash with items to make as the key, and the number of ingredients it takes as a value

#   # library.each do |food|
#   #   if library[food] != library[item_to_make]
#       # error_counter += -1
#       # p error_counter
#     # end
#     #Goes through each item to see if it is there
    
#   # end

#   if !library.has_key?(item_to_make)
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end
#   #If an item doesn't exist, raise an argument error

#   serving_size = library[item_to_make]
#   remaining_ingredients = num_of_ingredients % serving_size
#   #Gets the value of the item to make, calculates the remaining ingredients
  
  
#   if remaining_ingredients == 0
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#   else
    # return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end
# If there are 0 remaining ingredients, returns that string with the values
# If it doesn't equal 0, it tells you how many ingredients are leftover 



def bake_item(item, ingredients)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item} is not a valid input") if !menu.has_key?(item)

  serving_size = menu[item]
  remaining = ingredients % serving_size  
  
  message = "Calculations complete: Make #{ingredients / serving_size} of #{item}"
  
  message += ", you have #{remaining} leftover ingredients. Suggest Making:" if remaining != 0
  
  if remaining / 5 == 1
    remaining -= 5
    message += " 1 cake"
    message += " and" if remaining != 0
  end
  
  message += " #{remaining} cookies." if remaining != 0
  
  return message
end

p bake_item("pie", 10)
# p bake_item("pie", 8)
# p bake_item("cake", 5)
# p bake_item("cake", 7)
# p bake_item("cookie", 1)
# p bake_item("cookie", 10)
# p bake_item("THIS IS AN ERROR", 5)

#  Reflection
=begin

What did you learn about making code readable by working on this challenge?

  Less lines and shorter and more accurate variable names make the code more readable.

Did you learn any new methods? What did you learn about them?

  I learned that hash.values_at will return an array of the values at the keys you specify.

What did you learn about accessing data in hashes? 

  I don't think I learned anything new about accessing data in hashes.

What concepts were solidified when working through this challenge?

  I mostly learned about ways to make code more readable.

=end