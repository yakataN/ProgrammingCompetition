n = gets.chomp.to_i
as = gets.chomp.split.map(&:to_i)

# 階乗の計算
def factorial(n)
  if n == 1
    return 1
  elsif n == 0
    return 1
  else
    return n*factorial(n-1)
  end
end

# 組み合わせの計算
def comb(n,r)
  return factorial(n)/factorial(n-r)/factorial(r)
end

# ここまでOK

answer = 0
tmp = 0
ary = [0,0]

for i in 0..n-2 do
  for j in i+1..n-1 do
    if as[i] < as[j] then
      tmp = comb(as[j],as[i])
    else
      tmp = comb(as[i],as[j])
    end
    if answer < tmp then
      answer = tmp
      ary = [as[i],as[j]]
    end
  end
end

ary.sort! {|a, b| b<=> a }
puts(ary[0].to_s+" "+ary[1].to_s)
