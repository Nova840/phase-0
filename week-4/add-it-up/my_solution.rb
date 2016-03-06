# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Buck Melton.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum of all numbers in the array
# Steps to solve the problem.

# initialize answer to zero
# go through each element of array and add it to answer
# return answer

# 1. total initial solution

def total ( numbers )

    answer = 0
    numbers.each do |thisNum|
        answer += thisNum
    end
    return answer
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: an array of strings
# Output: each element joined into a sentence
# Steps to solve the problem.

# initialize null string as answer
# go through each element of array
#     add element to answer
#     add space

# Add period
# Capitalize first letter

# Return answer


# 5. sentence_maker initial solution

def sentence_maker ( strArray )

    answer = ''

    strArray.each do |thisStr|
        answer += thisStr.to_s + ' '
    end

    answer.slice!(answer.length-1)

    answer += '.'

    return answer.capitalize!

end