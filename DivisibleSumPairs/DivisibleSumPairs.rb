#!/bin/ruby

#https://www.hackerrank.com/challenges/divisible-sum-pairs/

require 'json'
require 'stringio'

# Complete the divisibleSumPairs function below.
def divisibleSumPairs(n, k, ar)


end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = divisibleSumPairs n, k, ar

fptr.write result
fptr.write "\n"

fptr.close()
