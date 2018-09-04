n,m = gets.chomp.split.map(&:to_i)
ary = gets.chomp.split.map(&:to_i)
ruisekiwa = [0]

n.times do |i|
  ary[i] %= m
  ruisekiwa[i+1] = ruisekiwa[i]+ary[i]
end

count = 0
for l in 1..n do
  for r in l..n do
    if (ruisekiwa[r]-ruisekiwa[l-1])%m == 0
      count += 1
      p [l,r]
    end
  end
end

puts(count)
