N,A = gets.chomp.split.map(&:to_i)
ary = gets.chomp.split.map(&:to_i)

N.times do |i|
  ary[i] -= A
end
zero_num = ary.count(0)
ary.delete(0)
ary.sort!
# p zero_num

dp = {}
dp[0] = 1
# p ary
ary.each do |num|
  dp.each do |key,value|
    p [key,num]
    tmp = key+num
    if dp[tmp]
      dp[tmp] += dp[key]
    else
      dp[tmp] = dp[key]
    end
    # p dp
  end
end
ans = dp[0]*(2**zero_num)-1
puts ans
