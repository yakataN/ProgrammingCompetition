n,m,q = gets.chomp.split.map(&:to_i)
ary = []
m.times do
  ary << [gets.chomp.split.map(&:to_i),0]
end
# aryPQ
q.times do |i|
  ary << [gets.chomp.split.map(&:to_i),i+1]
end

ary.sort!
ans = []
i = 0
while i < m+q
  # 質問なら
  if ary[i][2] >= 1
    # 直前と比較して
    if ary[i-1][0] == ary[i][0]
