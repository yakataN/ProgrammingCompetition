n = gets.chomp.to_i
str = gets.chomp

max = 0
(n-1).times do |i|
  a = str[0..i]
  b = str[i+1..-1]
  # strを取り出して分割する
  tmp_type = []
  # アルファベットの種類のための箱を作る
  a.length.times do |j|
    if b && b.include?(a[j])
      tmp_type << a[j]
    end
  end
  tmp_type.uniq!
  max = [max,tmp_type.length].max
end
puts max
