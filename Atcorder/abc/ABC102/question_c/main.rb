n = gets.chomp.to_i
ary = gets.chomp.split.map(&:to_i)

n.times do |i|
  ary[i] -= i
end
ary.sort!

b=ary[n/2]
ans = 0
ary.each do |item|
  ans += (item-b).abs
end
puts ans
