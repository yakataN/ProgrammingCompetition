# cats and dogs
ary = gets.chomp.split.map(&:to_i)
if ary[0] <= ary[2] and ary[2] <= ary[0]+ary[1]
  puts("YES")
else
  puts("NO")
end
