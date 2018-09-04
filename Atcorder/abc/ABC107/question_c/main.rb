n,k = gets.chomp.split.map(&:to_i)
ary = gets.chomp.split.map(&:to_i)


ans = Float::INFINITY
(n-k+1).times do |num|
  i = num
  j = num+k-1
  ans1 = ary[i].abs+(ary[j]-ary[i]).abs
  ans2 = ary[j].abs+(ary[j]-ary[i]).abs
  ans = [ans,ans1,ans2].min
end
puts ans
