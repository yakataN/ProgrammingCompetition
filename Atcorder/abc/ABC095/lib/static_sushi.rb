n,c = gets.chomp.split.map(&:to_i)
sum_calorie = 0
max_calorie = 0
subxi = 0
n.times do |i|
  tmp_calorie = 0
  xi,vi = gets.chomp.split.map(&:to_i)
  tmp_calorie = vi-(xi-subxi)
  sum_calorie += tmp_calorie
  max_calorie = sum_calorie if sum_calorie > max_calorie
  # 一つ前のxiをsubxiに入れる
  subxi = xi
end
puts(max_calorie)
