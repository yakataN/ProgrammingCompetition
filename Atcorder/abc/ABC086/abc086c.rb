n = gets.chomp.to_i
map = [0,0]
flag = true

n.times do |i|
  ary = gets.chomp.split.map(&:to_i)
  # 時間が十分にあり、時間つぶしもできるならば
  if ary[1]+ary[2]<=ary[0] and (ary[0]-ary[1]-ary[2])%2==0 then
    # mapを更新する
    map = [ary[1], ary[2]]
  else
    # 出来ないならflagを折る
    flag = false
  end
end

if flag
  puts("Yes")
else
  puts("No")
end
