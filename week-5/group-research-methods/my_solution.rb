# Research Methods
# I spent [0.5] hours on this challenge.

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! {|i|
    if(i.is_a? Numeric) 
      i += thing_to_modify 
    else
      i = i #nil unless this is here
    end
    }
  return source
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each{|k, v| source[k] += thing_to_modify }
  return source
end

=begin

Release 2: Identify and describe the Ruby method you implemented. Teach your
accountability group how to use the methods.

  One new method I used was the map method. It will iterate through a list changing the values of the item. map! is the destructive version of it.

Release 3: Reflect!
What did you learn about researching and explaining your research to others?

  I learned that there are a lot of other people that have problems similar to yours so if you're stuck, research the problem.

=end