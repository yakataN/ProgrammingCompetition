# 標準入力を受け取る形式でtestする方法がわからん

ary = gets.chomp.split.map(&:to_i) #n xの入力
minimum = ary[1]
# ｘをmiの最大値として入力
sum = 0
ary[0].times do |i|
  tmp = gets.to_i
  sum += tmp
  minimum = tmp if tmp<minimum
end
puts((ary[1]-sum)/minimum+ary[0])
