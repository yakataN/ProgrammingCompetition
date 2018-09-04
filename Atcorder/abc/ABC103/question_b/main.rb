s = gets.chomp
t = gets.chomp

def kaiten(str)
  tmp = str[-1]
  str.insert(0, tmp)
  str[-1] = ""
end

flag = false
s.length.times do |i|
  if s==t
    flag = true
    break
  end
  kaiten(s)
end

if flag
  puts "Yes"
else
  puts "No"
end
