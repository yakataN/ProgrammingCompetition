n,m = gets.chomp.split.map(&:to_i)
ary = []
n.times do
  # ary[0][2]→z1
  ary << gets.chomp.split.map(&:to_i)
end
ans = 0

# +-の組み合わせで8通り試す
plmi=[[0,0,0],[0,0,1],[0,1,0],[0,1,1],[1,0,0],[1,0,1],[1,1,0],[1,1,1]]
plmi.each do |i|
  eva = []
  ary.each do |xyz|
    eva << (xyz[0]*((-1)**i[0])+xyz[1]*((-1)**i[1])+xyz[2]*((-1)**i[2]))
  end
  # 降順ソート
  eva.sort! {|a, b| b <=> a }
  tmp_ans = 0
  m.times do |i|
    tmp_ans += eva[i]
  end
  ans = [ans,tmp_ans].max
end

puts ans
