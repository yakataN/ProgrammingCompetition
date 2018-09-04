# ABC087B - Coins
coin500 = gets.chomp.to_i
coin100 = gets.chomp.to_i
coin50 = gets.chomp.to_i
sum = gets.chomp.to_i
count=0
for i in 0..coin500 do
  for j in 0..coin100 do
    for k in 0..coin50 do
      tmp = i*500+j*100+k*50
      if tmp == sum then
        count+=1
      end
    end
  end
end
puts count
