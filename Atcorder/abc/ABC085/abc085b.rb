n = gets.chomp.to_i
ary = []
n.times do |i|
  # 重複が無いかのフラグ
  flg=0
  tmp = gets.chomp.to_i
  # 同じものがあったらフラグを立てる
  for j in ary do
    if tmp == j then
      flg+=1
    end
  end
  # フラグが経ってたらaryに入れない
  if flg == 0 then
    ary << tmp
  end
end
puts(ary.length)
