n = gets.chomp.to_i

def maxnum(n)
  (Math.log(3*n+1)/Math.log(4.0)).ceil
  # (Math.log(3*n/2.0+1)/Math.log(10.0)).to_i
end

# print(maxnum(n))

def minnum(n)
  (Math.log(3*n/2.0+1)/Math.log(4.0)).ceil
end
#
def count(input_num,sum)
  # p [input_num,sum]
  if input_num>0
    ketasu = 2*maxnum(input_num)-2
    sum += 10 ** ketasu
    count(input_num-2**ketasu,sum)
  elsif input_num < 0
    ketasu = 2*minnum(input_num.abs)-1
    sum += 10 ** ketasu
    count(input_num+2**ketasu,sum)
  else
    return sum
  end
end


puts count(n,0)
