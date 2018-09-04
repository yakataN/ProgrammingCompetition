n, k = gets.chomp.split.map(&:to_i)
_ = gets

tmp = n-k
ans = 1
ans += tmp/(k-1)
# 割り切れないなら１タス
if tmp % (k-1) != 0
  ans += 1
end
puts ans
