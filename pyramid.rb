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
  