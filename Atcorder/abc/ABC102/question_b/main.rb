_ = gets.chomp.to_i
ary = gets.chomp.split.map(&:to_i)
ary.sort!
puts ary[-1]-ary[0]
