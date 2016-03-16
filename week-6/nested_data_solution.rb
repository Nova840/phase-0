# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

#p array[2][2][3][1]
#p array[2]
#p array[1]
#p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

#p hash[outer:][inner:]["almost"][3]
#p hash[:outer]
#p hash[:outer][:inner]["almost"][3]

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
#p number_array
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