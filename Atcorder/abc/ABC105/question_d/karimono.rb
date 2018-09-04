# https://abc105.contest.atcoder.jp/submissions/2992020
n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
r=0
ccum=a.map{|x|r=(r+x)%m}

h=ccum.each_with_object(Hash.new(0)){|v,o| o[v]+=1}

p h[0] + h.values.inject(0){|res,v|res+=v*(v-1)/2}
