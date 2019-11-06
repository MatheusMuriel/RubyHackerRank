#!/bin/ruby

#https://www.hackerrank.com/challenges/sock-merchant

require 'json'
require 'stringio'

# Complete the sockMerchant function below.
def sockMerchant(n, ar)


end

n = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = sockMerchant n, ar

puts result
