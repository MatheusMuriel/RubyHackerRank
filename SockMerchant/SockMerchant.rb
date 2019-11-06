#!/bin/ruby

#https://www.hackerrank.com/challenges/sock-merchant

require 'json'
require 'stringio'

# Complete the sockMerchant function below.
def sockMerchant(n, ar)
  hs_socks = ar.group_by{|x| x}
  pairs_count = hs_socks.map{|x| x[1].length.even? ? (x[1].length / 2) : ((x[1].length-1) / 2)}
  return pairs_count.reduce(:+)
end

n = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = sockMerchant n, ar

puts result
