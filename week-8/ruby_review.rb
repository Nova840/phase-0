# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [2] hours on this challenge.

# Pseudocode

#horizontal: return true if all items in a row equal 'x'
#vertical: return true if all items at an index in all rows equal 'x'
#diagonal: check each of the 5 items individually and return true if they are all 'x'

# sample boards

none = [[47, 44, 71, 8, 88],
		[22, 69, 75, 65, 73],
		[83, 85, 97, 89, 57],
		[25, 31, 96, 68, 51],
		[75, 70, 54, 80, 83]]

all = [['x', 'x', 'x', 'x', 'x'],
		['x', 'x', 'x', 'x', 'x'],
		['x', 'x', 'x', 'x', 'x'],
		['x', 'x', 'x', 'x', 'x'],
		['x', 'x', 'x', 'x', 'x']]

custom = [['x', 44, 71, 8, 88],
		['x', 'x', 75, 65, 73],
		['x', 'x', 'x', 89, 57],
		['x', 'x', 'x', 'x', 51],
		['x', 'x', 'x', 'x', 'x']]

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]

inside_corners = [[47, 44, 71, 8, 88],
				[22, 'x', 75, 'x', 73],
				[83, 85, 'x', 89, 57],
				[25, 'x', 96, 'x', 51],
				[75, 70, 54, 80, 83]]

postage_stamp = [[47, 44, 71, 8, 88],
				[22, 69, 75, 65, 73],
				[83, 85, 'x', 89, 57],
				['x', 'x', 96, 68, 51],
				['x', 'x', 54, 80, 83]]

small_diamond = [[47, 44, 71, 8, 88],
				[22, 69, 'x', 65, 73],
				[83, 'x', 'x', 'x', 57],
				[25, 31, 'x', 68, 51],
				[75, 70, 54, 80, 83]]

outside_corners = [['x', 44, 71, 8, 'x'],
				[22, 69, 75, 65, 73],
				[83, 85, 'x', 89, 57],
				[25, 31, 96, 68, 51],
				['x', 70, 54, 80, 'x']]

boards = [none, all, custom, horizontal, vertical, right_to_left,
	left_to_right, inside_corners, postage_stamp, small_diamond,
	outside_corners]

# Initial Solution

# class BingoScorer

# 	def initialize(board)
# 		@board = board
# 	end

# 	def score
# 		"Horizontal: " + check_horizontal(@board).to_s +
# 		"\nVertical: " + check_vertical(@board).to_s +
# 		#"\nRight to Left: " + check_right_to_left(@board).to_s +
# 		#"\nLeft to Right: " + check_left_to_right(@board).to_s +
# 		"\nDiagonal: " + check_diagonal(@board).to_s +
# 		"\nInside Corners: " + check_inside_corners(@board).to_s +
# 		"\nPostage Stamp: " + check_postage_stamp(@board).to_s +
# 		"\nSmall Diamond: " + check_small_diamond(@board).to_s +
# 		"\nOutside Corners: " + check_outside_corners(@board).to_s +
# 		"\n\n"
# 	end

# 	private

# 	def check_horizontal(board)
# 		board.each do |row|
# 			numX = 0
# 			row.each do |item|
# 				numX += 1 if item == 'x' 
# 			end
# 			return true if numX >= 5
# 		end
# 		return false
# 	end

# 	def check_vertical(board)
# 		columns = []
# 		board.each do |row|
# 			row.each_index do |i|
# 				columns[i] = [] if columns[i] == nil
# 				columns[i].push(row[i])
# 			end
# 		end
# 		return check_horizontal columns
# 	end

# 	def check_right_to_left(board)
# 		board.each_index do |i|
# 			return false if board[i][i] != 'x'
# 		end
# 		return true
# 	end

# 	def check_left_to_right(board)
# 		board.each_index do |i|
# 			return false if board[i][4 - i] != 'x'
# 		end
# 		return true
# 	end

# 	def check_diagonal(board)
# 		check_right_to_left(board) || check_left_to_right(board)
# 	end

# 	def check_inside_corners(board)
# 		board[1][1] == 'x' &&
# 		board[1][3] == 'x' &&
# 		board[2][2] == 'x' &&
# 		board[3][1] == 'x' &&
# 		board[3][3] == 'x'
# 	end

# 	def check_postage_stamp(board)
# 		board[2][2] == 'x' &&
# 		board[3][0] == 'x' &&
# 		board[3][1] == 'x' &&
# 		board[4][0] == 'x' &&
# 		board[4][1] == 'x'
# 	end

# 	def check_small_diamond(board)
# 		board[1][2] == 'x' &&
# 		board[2][1] == 'x' &&
# 		board[2][2] == 'x' &&
# 		board[2][3] == 'x' &&
# 		board[3][2] == 'x'
# 	end

# 	def check_outside_corners(board)
# 		board[0][0] == 'x' &&
# 		board[0][4] == 'x' &&
# 		board[2][2] == 'x' &&
# 		board[4][0] == 'x' &&
# 		board[4][4] == 'x'
# 	end

# end

# Refactored Solution

class BingoScorer

	def initialize(board)
		@board = board
	end

	def score
		"Horizontal: " + check_horizontal(@board).to_s +
		"\nVertical: " + check_vertical(@board).to_s +
		#"\nRight to Left: " + check_right_to_left(@board).to_s +
		#"\nLeft to Right: " + check_left_to_right(@board).to_s +
		"\nDiagonal: " + check_diagonal(@board).to_s +
		"\nInside Corners: " + check_inside_corners(@board).to_s +
		"\nPostage Stamp: " + check_postage_stamp(@board).to_s +
		"\nSmall Diamond: " + check_small_diamond(@board).to_s +
		"\nOutside Corners: " + check_outside_corners(@board).to_s +
		"\n\n"
	end

	private

	def check_horizontal(board)
		board.each do |row|
			return true if row.all?{|item| item == 'x'}
		end
		return false
	end

	def check_vertical(board)
		return check_horizontal board.transpose
	end

	def check_right_to_left(board)
		board.each_index do |i|
			return false if board[i][i] != 'x'
		end
		return true
	end

	def check_left_to_right(board)
		board.each_index do |i|
			return false if board[i][4 - i] != 'x'
		end
		return true
	end

	def check_diagonal(board)
		check_right_to_left(board) || check_left_to_right(board)
	end

	def check_inside_corners(board)
		board[1][1] == 'x' &&
		board[1][3] == 'x' &&
		board[2][2] == 'x' &&
		board[3][1] == 'x' &&
		board[3][3] == 'x'
	end

	def check_postage_stamp(board)
		board[2][2] == 'x' &&
		board[3][0] == 'x' &&
		board[3][1] == 'x' &&
		board[4][0] == 'x' &&
		board[4][1] == 'x'
	end

	def check_small_diamond(board)
		board[1][2] == 'x' &&
		board[2][1] == 'x' &&
		board[2][2] == 'x' &&
		board[2][3] == 'x' &&
		board[3][2] == 'x'
	end

	def check_outside_corners(board)
		board[0][0] == 'x' &&
		board[0][4] == 'x' &&
		board[2][2] == 'x' &&
		board[4][0] == 'x' &&
		board[4][4] == 'x'
	end

end

# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

boards.each do |board|
	board.each {|row| p row}
	puts BingoScorer.new(board).score
end

# Reflection
=begin

What concepts did you review or learn in this challenge?

	I learned about the all? and transpose method.

What is still confusing to you about Ruby?

	Knowing what methods to use for something.

What are you going to study to get more prepared for Phase 1?

	Various methods and when to use them.

=end