# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

require_relative "state_data"

# EXPLANATION OF require_relative
# Require_relative loads a file relative to the file it is # written in. Require is typically used to load features like gems by taking an input string of the gem name.
#
class VirusPredictor
  
  # sets instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # uses the instance variables to predict the amount of deaths and speed of spread.
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private
  # uses population density to calculate a number of deaths.
  # prints the calculated number of deaths.
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
      when (150..200)
        deaths = (@population * 0.3).floor
      when (100..150)
        deaths = (@population * 0.2).floor
      when (50..100)
        deaths = (@population * 0.1).floor
      when (0..50)
        deaths = (@population * 0.05).floor
      else
        deaths = (@population * 0.4).floor
    end
    return deaths

  end

  # uses population density to calculate speed of spread.
  # prints the calculated speed of spread in in terms of how long it would take to cover the entire state in months.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
  
    case @population_density
      when (150..200)
        speed += 1
      when (100..150)
        speed += 1.5
      when (50..100)
        speed += 2
      when (0..50)
        speed += 2.5
      else
        speed += 0.5
    end
    return speed

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |key, value|
  virus_predictor = VirusPredictor.new(key, value[:population_density], value[:population])
virus_predictor.virus_effects
end
=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section
=begin

What are the differences between the two different hash syntaxes shown in the state_data file?

  One uses symbols and the other one uses strings.

What does require_relative do? How is it different from require?

  Require relative runs the file and require gives you access to something.

What are some ways to iterate through a hash?

  You can use each or a similar method.

When refactoring virus_effects, what stood out to you about the variables, if anything?

  The scope of the variables makes parameters unnecessary.

What concept did you most solidify in this challenge?

  The most solidified concept in this challenge was scope.

=end