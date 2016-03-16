# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

#p array[2][2][3][1]
#p array[2]
#p array[1]
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

#p hash[outer:][inner:]["almost"][3]
#p hash[:outer]
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

def add5!(array)
  index = 0
  array.each{ |i|
    if(i.is_a? Array)
      add5!(i)
    else
      array[index] = i + 5
    end
    index += 1
  }
end


add5! number_array
p number_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
def addLy!(array)
  index = 0
  array.each{ |i|
    if(i.is_a? Array)
      addLy!(i)
    else
      array[index] = i + "ly"
    end
    index += 1
  }
end

addLy! startup_names
p startup_names

=begin

Reflection:

What are some general rules you can apply to nested arrays?

  Nested arrays are arrays with one or more arrays inside of the array.

What are some ways you can iterate over nested arrays?

  You can use nested loops if you know how many dimensions the array has of recursion if you don't.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

  We didn't use any new methods. I couldn't find any that would better do what I wanted than the ones I already knew.

=end