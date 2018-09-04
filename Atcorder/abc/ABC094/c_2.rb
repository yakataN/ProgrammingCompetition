# nは偶数
n = gets.chomp.to_i
ARY = gets.chomp.split.map(&:to_i)

for i in 0..n-1 do
  tmp = ARY
  tmp[i] = 0
  p tmp
end
