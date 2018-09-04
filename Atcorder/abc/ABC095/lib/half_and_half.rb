a,b,c,x,y = gets.chomp.split.map(&:to_i)
# a b c x y
# a:a b:b c:ab x:apizzaの枚数 y:bpizzaの枚数

# 底の部分ではabとa+bのどっちがとくか
# あまりの部分ではa(b)とabのどっちが得かという話

sum = 0
if x>=y
  if a+b <= 2*c
    sum+=[x,y].min*(a+b)
  else
    sum+=[x,y].min*c*2
  end
  if a <= c*2
    sum+=([x,y].max-[x,y].min)*a
  else
    sum+=([x,y].max-[x,y].min)*2*c
  end
else
  if a+b <= 2*c
    sum+=[x,y].min*(a+b)
  else
    sum+=[x,y].min*c*2
  end
  if b <= c*2
    sum+=([x,y].max-[x,y].min)*b
  else
    sum+=([x,y].max-[x,y].min)*2*c
  end
end

puts(sum)
