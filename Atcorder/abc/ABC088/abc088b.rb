n = gets.chomp.to_i
ary = gets.chomp.split.map(&:to_i)
ary.sort! {|a,b| b <=> a }
# p ary
alice = 0
bob = 0
n.times do |i|
  if i%2==0
    alice+=ary[i]
  else
    bob+=ary[i]
  end
end
puts alice-bob
