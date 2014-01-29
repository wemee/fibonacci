require './fibonacci.rb'

puts Fibonacci.find_at 10 # => 34
p Fibonacci.ary_to 10  # => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]