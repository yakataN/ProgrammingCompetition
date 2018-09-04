# abc049c
str = gets.chomp.reverse
ary = ["dream", "dreamer", "erase", "eraser"].map(&:reverse)

flag = true
start = 0

while flag
  flag = false
  for i in ary do
    if str.slice(start,i.length) == i
      flag = true
      start+=i.length
      break
    end
  end
end

if str.length == start
  puts("YES")
else
  puts("NO")
end
