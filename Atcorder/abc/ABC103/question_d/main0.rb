n,m = gets.chomp.split.map(&:to_i)
ary = []
m.times do
  ary << gets.chomp.split.map(&:to_i)
end

def asyuku_youbou(ary,n)
  # 含まれたら短くする
  # 重なったら短くする
  # 独立ならput
  ans_ary = [[1,n]]
  ary.each do |item|
    flag = true
    ans_ary.each do |hani|
        # 重なる
      if (hani[0] <= item[0] and item[0] <= hani[1]) or (hani[0] <= item[1] and item[1] <= hani[1])
        hani = [[item[0],hani[0]].max,[item[1],hani[1]].min]
        flag = false
        break
        # 含まれる
      elsif (hani[0] <= item[0] and item[1] <= hani[1]) or (item[0] <= hani[0] and hani[1] <= item[1])
        hani = [[item[0],hani[0]].max,[item[1],hani[1]].min]
        flag = false
        # 独立
      else
      end
    end
    if flag
      ans_ary << item
    end
    # p ans_ary
  end
end

ans_ary = asyuku_youbou(ary,n)
puts ans_ary.length
