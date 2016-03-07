# Method to create a list
# input: 
# steps: 
  # define the method with parameters 
  # cart = {}
  # 
# output: puts 'Created cart successfully!'

def create_cart(user_cart)
  cart = user_cart
  puts 'Created cart successfully!'
  p cart
end

# Method to add an item to a list
# input: item name and optional quantity
# steps:

# define the method with parameters item name and quantity
# add item to hash with value quantity
# puts informational message

# output: modified hash with added item

def add_item(name,quantity,cart)
   
  unless cart.has_key?(name)
  cart[name] = quantity
  puts 'Item successfully added!'
  else
  puts 'Item already added!'
  end
   
  p cart
   
end

# Method to remove an item from the list
# input: item name
# steps:

# define the method with parameter item name
# remove item from list
# puts informational message

# output: modified hash

def remove_item(name, cart)
   
  if cart.delete(name) != nil
  puts 'Item successfully removed!'
  else
  puts 'No such item in cart!'
  end
   
  p cart
   
end

# Method to update the quantity of an item
# input: item name and quantity
# steps:

# define the method with parameters item name and quantity
# set the quanity to new quantity
# puts informational message

# output: modified hash

def update_item(name,quantity, cart)
   
  if cart.has_key?(name)
  cart[name] = quantity
  puts 'Quantity of item successfully updated!'
  else
  puts 'Item doesn\'t exist!'
  end
   
  p cart
   
end

# Method to print a list and make it look pretty
# input: none
# steps:

# define the method
# hash.each
# puts the product and (quantity)

# output: none

def display_cart(cart)
  cart.each do |item, quantity|
  puts item.to_s + ' (' + quantity.to_s + ')'
  end
end

my_cart = create_cart({'potatoes' => 2, 'garlic' => 5, 'loaves' => 3})
add_item('banana', 4, my_cart)
remove_item('banana', my_cart)
update_item('potatoes', 10, my_cart)
display_cart(my_cart)

=begin
	
Reflection:

What did you learn about pseudocode from working on this challenge?

	Psuedocode can help you code by giving you instructions to work off of.

What are the tradeoffs of using Arrays and Hashes for this challenge?

	With hashes you have to specify a key when with arrays you just use an index.

What does a method return?

	A method returns what you tell it to return, in this case the cart.

What kind of things can you pass into methods as arguments?

	You can pass any kind of object as a parameter.

How can you pass information between methods?

	Have a variable with a larger scope or pass it into the parameters.

What concepts were solidified in this challenge, and what concepts are still confusing?

	The concept of scope was became more solidified in this challenge.

=end