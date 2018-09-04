n,m = gets.chomp.split.map(&:to_i)
ary = []
m.times do
  ary << gets.chomp.split.map(&:to_i)
end

def asyuku_youbou(ary,n)
  ary.sort_by!{|item| item[1]}
  last = -1
  count = 0
  ary.each do |item|
    if item[0] >= last
      count += 1
      last = item[1]
    end
  end
  return count
end

ans_ary = asyuku_youbou(ary,n)
puts ans_ary
