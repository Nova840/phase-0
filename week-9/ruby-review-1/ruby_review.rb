# Create a Car Class from User Stories


# I worked on this challenge [with: Lisa Dannewitz/Adam Zmudzinski].


=begin
# 2. Pseudocode
-Create Car class with attributes for model and color
-Define driving distance for Car class and set default to 0
-Define total distance for Car class and set default to 0
-When you change driving distance, also change total distance
-Define speed

-Define methods to turn Car left or right
---add route statement to log
-Define methods to accelerate or decelerate car to a given speed
---add route statement to log
-Define stop method that sets speed to 0
---add route statement to log

Make log that lists play-by-play of pizza delivery

=end

# 3. Initial Solution

class Car
  
  def initialize(model, color)
    @model = model
    @color = color
    @speed = 0
    @distance = 0
    @total_distance = 0
    @log = []
    @pizzas = []
  end
  
  attr_reader :log, :distance, :speed, :model, :color, :total_distance
  
  def turn(direction)
    if(direction.downcase == "left")
      @log.push("Left")
      puts "Turning left."
    elsif(direction.downcase == "right")
      @log.push("Right")
      puts "Turning right."
    else
      puts "Invalid direction."
    end
  end
  
  def distance=(dist)
    @distance = dist
    @total_distance += dist
    @log.push("Go #{dist} miles")
    puts "Destination #{dist} miles."
  end
  
  def accelerate(amount)
    @speed += amount
    @speed = 0 if(@speed < 0)
    @log.push("Changed speed by #{amount}.")
    puts "Changed speed by #{amount}."
  end
  
  def stop
    @speed = 0
    puts "Stopped."
    @log.push("Stopped")
  end
  
  def pickup(pizza)
    @pizzas.push(pizza)
    puts "Picked up #{pizza.size} #{pizza.type} pizza."
    @log.push("Picked up #{pizza.size} #{pizza.type} pizza.")
  end
  
  def deliver
    if(@pizzas.empty?)
      puts "No pizzas to deliver"
      return
    end
    pizza = @pizzas.shift
    puts "Delivered #{pizza.size} #{pizza.type} pizza."
    @log.push("Delivered #{pizza.size} #{pizza.type} pizza.")
  end
  
end

class Pizza
  
  def initialize(size, type)
    @size = size
    @type = type
  end
  
  attr_reader :size, :type
  
  def bake
    puts "Your pizza is baking..."
    sleep(3)
    puts "Your pizza is ready!"
  end
  
end
# 4. Refactored Solution

# We changed the attr_accessor to attr_reader because we wanted all actions done through methods so they could also be logged.

# When we added a separate Class for Pizza, we altered our #pickup and #deliver methods to take a Pizza object as an argument.




# 1. DRIVER TESTS GO BELOW THIS LINE

car = Car.new("Batmobile", "Black")
car.distance = 0.25
car.accelerate(25)
car.stop
car.turn("right")
car.distance = 1.5
car.accelerate(35)
puts "Speed: " + car.speed.to_s
car.accelerate(-20)
car.distance = 0.25
car.stop
car.turn("left")
car.distance = 1.4
car.accelerate(35)
car.stop
puts "Total distance: " + car.total_distance.to_s

puts "---------------"
car.log.each {|x| p x}
puts "---------------"

sm_cheese = Pizza.new("small","cheese")
sm_cheese.bake
car.pickup(sm_cheese)
car.deliver



# 5. Reflection
=begin

Reflection:

What concepts did you review in this challenge?

	The attr_reader/writer/accessor and the concept of classes.

What is still confusing to you about Ruby?

	There are so many methods I can use and I might not know of the best one.

What are you going to study to get more prepared for Phase 1?

	The Ruby docs for methods I might not know of.

=end