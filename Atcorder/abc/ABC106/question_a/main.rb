# a = gets.chomp.to_i
# b = gets.chomp.to_i
a,b = gets.chomp.split.map(&:to_i)
puts a*b-(a+b-1)
