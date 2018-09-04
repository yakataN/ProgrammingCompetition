# 入力を受け取る
ary = gets.chomp.split.map(&:to_i)
n = ary[0]
y = ary[1]
flg = nil
# 全ての通りを調べてyと一致したらbreak
for i in 0..n do
  for j in 0..(n-i) do
    # sumを初期化
    sum = 0
    # sumを計算
    sum = i*10000+j*5000+1000*(n-i-j)
    if sum == y then
      puts(i.to_s+" "+j.to_s+" "+(n-i-j).to_s)
      flg = 0
      break
    end
  end
  if flg
    break
  end
end
if flg==nil
  puts("-1 -1 -1")
end
