n = gets.chomp.to_i

tmp_7 = n/7
flag = true
for i in 0..tmp_7
  if (n-7*i)%4 == 0
    puts "Yes"
    flag = false
    break
  end
end

if flag
  puts "No"
end
