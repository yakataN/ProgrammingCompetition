# 入力を受け取る N A B
ary = gets.chomp.split.map(&:to_i)
n = ary[0]
answer = 0
# 1-nまでのうち
for i in 1..n do
  tmp = i
  # 各桁の和を受け取る
  sum=0
  while i != 0
    sum += i%10
    i /= 10
  end
  # p sum
  if sum >= ary[1] and sum <= ary[2]
    answer += tmp
  end
end
puts answer
