ary = gets.chomp.split.map(&:to_i)
n = ary[0]
m = ary[1]
x = ary[2]
cost = gets.chomp.split.map(&:to_i)
left_cost = 0
right_cost = 0

m.times do |i|
  if cost[i] < x then
    left_cost += 1
  else
    right_cost += 1
  end
end

if left_cost <= right_cost then
  puts(left_cost)
else
  puts(right_cost)
end
