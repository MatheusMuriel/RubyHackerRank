#!/bin/ruby

#https://www.hackerrank.com/challenges/electronics-shop

#
# Complete the getMoneySpent function below.
#
def getMoneySpent(keyboards, drives, bud)
  
  max_k = keyboards.max()
  max_d = drives.max()

  a, b = (max_k > max_d) ? [keyboards, drives] : [drives, keyboards]

  max_value = -1
  a.sort.reverse.each{|i| 
    b_aux = b.clone
    b_aux.sort.reverse.each{ |j| 
      res_aux = (i + j)
      if res_aux <= bud
        max_value = res_aux
        break
      end
    }
    break if max_value != -1
  }

  return max_value
end

bnm = gets.rstrip.split

b = bnm[0].to_i

n = bnm[1].to_i

m = bnm[2].to_i

keyboards = gets.rstrip.split(' ').map(&:to_i)

drives = gets.rstrip.split(' ').map(&:to_i)

#
# The maximum amount of money she can spend on a keyboard and USB drive, or -1 if she can't purchase both items
#

moneySpent = getMoneySpent keyboards, drives, b

puts moneySpent
