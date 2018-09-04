k = gets.chomp.to_i
ary = [1,2,3,4,5,6,7,8,9]
if k <= 9
  k.times do |i|
    puts ary[i]
  end
else
  ary.each do |i|
    puts i
  end
  (k/9-1).times do
    9.times do |i|
      ary[i] = ary[i]*10+9
      puts ary[i]
    end
  end
  (k%9).times do |i|
    ary[i] = ary[i]*10+9
    puts ary[i]
  end
end
