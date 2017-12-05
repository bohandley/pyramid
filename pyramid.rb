# build_pyramid(4, '*')
#    x
#   x x
#  x x x
# x x x x

# Xnum levels
# Xprint multiple char on each line
# Xone space in between each char
# X(num-1) spaces before the char

def build_pyramid(num, char)
  raise(ArgumentError, 'num must be an integer') unless num.is_a? Integer
  raise(ArgumentError, 'char must be a string') unless char.is_a? String
  pyramid = ''
  num.times { |index| pyramid += padding(num, index) + row(char, index) }
  pyramid
end

def padding(num, index)
  ' ' * (num - index - 1)
end

def row(char, index)
  (char + ' ') * (index + 1) + "\n"
end

# puts build_pyramid(1, '$')
# puts build_pyramid(4, '*')
# puts build_pyramid(10, 'q')
# puts build_pyramid('2', 2)
