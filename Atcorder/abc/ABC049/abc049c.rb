# abc049c
str = gets.chomp.reverse.split("")
ary = ["dream", "dreamer", "erase", "eraser"].map(&:reverse)
flg = nil
# p str.length

while str.length != 0
  if str[0..4] == ["m", "a", "e", "r", "d"]
    str.slice!(0,5) #0番目から要素５つ
  elsif str[0..6] == ["r","e","m","a","e","r","d"]
    str.slice!(0,7) #0番目から要素7つ
  elsif str[0..4] == ["e","s","a","r","e"]
    str.slice!(0,5) #0番目から要素５つ
  elsif str[0..5] == ["r","e","s","a","r","e"]
    str.slice!(0,5) #0番目から要素6つ
    # ココまで場合分け
  else
    # どれにも当てはまらなければNoのためのフラグを立てる
    flg=1
    break
  end
  # p str
  # p flg
end

if str.length == 0
  puts("Yes")
elsif flg == 1
  puts("NO")
else
  puts("bug")
end
