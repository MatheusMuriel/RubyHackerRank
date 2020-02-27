#!/bin/ruby

#https://www.hackerrank.com/challenges/electronics-shop

#
# Complete the getMoneySpent function below.
#
def getMoneySpent(keybs, drvs, b)
    purch = [-1]
    keybs.each{|k| drvs.each{|d| purch.append(k+d) if k+d <= b}}
    return purch.max
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
