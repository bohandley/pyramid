# build_pyramid(4, "*")
#   x
#  x x
# x x x
#x x x x

#num levels
#print multiple char on each line
#one space in between each char
#(num-1) spaces before the char

def build_pyramid(num, char)
  raise "num is not an integer" if num.class != Integer
  raise "char is not a string" if char.class != String
  pyramid = ""
  
  num.times { |index| pyramid += padding(num, index) + row(char, index) }
  
  pyramid
end

def padding(num, index)
  " " * (num - index - 1)
end

def row(char, index)
  (char + " ") * (index + 1) + "\n" 
end
  
puts build_pyramid(1, "$")  
puts build_pyramid(4, "*")
puts build_pyramid(10, "q")
puts build_pyramid(2, 2)