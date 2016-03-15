# A Nested Array to Model a Bingo Board SOLO CHALLENGE
# I spent [2] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

  #create a random number from 0 to 4
  #assign a letter of BINGO to a letter variable
  #assign a random value of 1-100 to a number variable

# Check the called column for the number called.
  #fill in the outline here

  #check the board's arrays at the index chosen by the letter for the number it is looking for.

# If the number is in the column, replace with an 'x'
  #fill in the outline here

  #if a number is found in the step above, replace that number with an "X".

# Display a column to the console
  #fill in the outline here

  #print the item at a specific index in each array of arrays on a separate line.

# Display the board to the console (prettily)
  #fill in the outline here

  #print each array in the array on a separate line.

# Initial Solution

=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    call_string = ""
    number = rand(5)
    if(number == 0)
      call_string += "B"
    elsif(number == 1)
      call_string += "I"
    elsif(number == 2)
      call_string += "N"
    elsif(number == 3)
      call_string += "G"
    elsif(number == 4)
      call_string += "O"
    end

    call_string += (rand(100)+1).to_s

    return call_string
  end

  def check(call)
    letter = call[0]
    if(letter == "B")
      index = 0
    elsif(letter == "I")
      index = 1
    elsif(letter == "N")
      index = 2
    elsif(letter == "G")
      index = 3
    elsif(letter == "O")
      index = 4
    end

    number = call
    number[0] = ""
    number = number.to_i

    @bingo_board.each do |row|
      if(row[index] == number)
        row[index] = "X"
      end
    end

  end

  def print_board
    puts
    @bingo_board.each do |row|
      row.each do |num|
        print "#{num}\t"
      end
      puts
      puts
    end
    puts
    puts
  end

end
=end

# Refactored Solution

=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    call_string = ""
    case rand(5)
    when 0
      call_string += "B"
    when 1
      call_string += "I"
    when 2
      call_string += "N"
    when 3
      call_string += "G"
    when 4
      call_string += "O"
    end

    call_string += (rand(100)+1).to_s

    return call_string
  end

  def check(call)
    letter = call[0].upcase
    case letter
    when "B"
      index = 0
    when "I"
      index = 1
     when "N"
      index = 2
     when "G"
      index = 3
     when "O"
      index = 4
     else
      raise ArgumentError.new("Input \"letter\" was not a letter of BINGO.")
    end

    number = call[1..-1].to_i

    @bingo_board.each do |row|
      row[index] = "X" if(row[index] == number)
    end

  end

  def print_board
    puts
    puts "B\tI\tN\tG\tO"
    puts
    @bingo_board.each do |row|
      row.each do |num|
        print "#{num}\t"
      end
      puts
      puts
    end
    puts
    puts
  end

end
=end

# Release 5: True Bingo Board

class BingoBoard

  def initialize(board = nil)
    if(board == nil)
      board = []
      0.upto(4) do |row|
        row_array = []
        0.upto(4) do |column|
          unless(row == 2 && column == 2)
            num = 0
            loop do
              num_exists = false
              num = rand(15) + (15 * column) + 1
              board.each do |existing_row|
                num_exists = true if existing_row[column] == num
              end
              break unless num_exists
            end
            row_array.push(num)
          else
            row_array.push("X")
          end
        end
        board.push(row_array)
      end
    end

    @bingo_board = board
  end

  def call
    call_string = ""
    column = rand(5)
    case column
    when 0
      call_string += "B"
    when 1
      call_string += "I"
    when 2
      call_string += "N"
    when 3
      call_string += "G"
    when 4
      call_string += "O"
    end

    call_string += (rand(15) + (15 * column) + 1).to_s

    return call_string
  end

  def check(call)
    letter = call[0].upcase
    case letter
    when "B"
      index = 0
    when "I"
      index = 1
     when "N"
      index = 2
     when "G"
      index = 3
     when "O"
      index = 4
     else
      raise ArgumentError.new("Input \"letter\" was not a letter of BINGO.")
    end

    number = call[1..-1].to_i

    @bingo_board.each do |row|
      row[index] = "X" if(row[index] == number)
    end

  end

  def print_board
    puts
    puts "B\tI\tN\tG\tO"
    puts
    @bingo_board.each do |row|
      row.each do |num|
        print "#{num}\t"
      end
      puts
      puts
    end
    puts
    puts
  end

end
=begin
#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
#DRIVER CODE FOR PREVIOUS VERSIONS
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

BingoBoard.new.print_board

call = new_game.call

puts "\n" + call
new_game.check(call)
new_game.print_board

call = "B22"
puts "\n" + call
new_game.check(call)
new_game.print_board

=end

new_game = BingoBoard.new
new_game.print_board
10.times do
  call = new_game.call
  puts "\n" + call
  new_game.check(call)
end

new_game.print_board

=begin

Reflection:

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

  Pseudocoding was a bit difficult for this challenge. I think my pseudocode can be a little hard to understand if it gets too complicated.

What are the benefits of using a class for this challenge?

  Using a class is beneficial for this challenge because it allows you to have more than one bingo board at once.

How can you access coordinates in a nested array?

  array[x_coordinate][y_coordinate]

What methods did you use to access and modify the array?

  I used the push method to create the array, but I just modified the value at coordinates to modify it. I used the each method to iterate through the arrays.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

  I didn't learn any new methods, but I learned how to get all but the first character in a string with string[1..-1] and a new way to loop using "loop". The new looping technique always happens at least once because the looping condition check comes after the code inside.

How did you determine what should be an instance variable versus a local variable?

  Instance variables belong to the instance, like the bingo board, and local variables aren't needed after the method is finished executing.

What do you feel is most improved in your refactored solution?

  I feel like the biggest improvement is that there is a lot less code and it is more readable.

=end