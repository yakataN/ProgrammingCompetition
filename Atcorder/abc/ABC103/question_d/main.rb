n,m = gets.chomp.split.map(&:to_i)
ary = []
m.times do
  ary << gets.chomp.split.map(&:to_i)
end

def asyuku_youbou(ary,n)
  tmp_ary = [[1,n]]
  horyu = []
  ary.each do |item|
    flag = true
    tmp_ary.each do |youbou|
      # 完全に離れる場合わける
      if item[1] <= youbou[0] or youbou[1] <= item[0]
      # 含まれる場合、一つに絞る
      elsif (item[0] <= youbou[0] and youbou[1] <= item[1])
        flag = false
        break
      elsif (youbou[0] <= item[0] and item[1] <= youbou[1])
        flag = false
        youbou = item
        break
      # 重なるばあいhoryuuする
      elsif (item[0]<=youbou[0] and item[1] <= youbou[1]) or (youbou[0]<=item[0] and youbou[1] <= item[1])
        horyu << item
      end
    end
    if flag
      tmp_ary << item
    end
    horyu.each do |item|

  end
  # tmp_aryは縫合を含まなくなった

  # 重なる数と独立を足す
end


ans_ary = asyuku_youbou(ary,n)
puts ans_ary.length
