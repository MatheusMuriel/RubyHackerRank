#!/bin/ruby

#https://www.hackerrank.com/challenges/divisible-sum-pairs/

require 'json'
require 'stringio'

# Complete the divisibleSumPairs function below.
def divisibleSumPairs(n, k, ar)
    valid_sum = -> (a, b){(a+b) % k == 0}
    pairs = ar.each_with_index.map{|vi, i|
                ar.each_with_index.map{|vj, j|
                    (i < j) && valid_sum.(vi, vj) ? [vi, vj] : nil
                }.reject{|v| v.nil?}
            }.flat_map{|v_arr| v_arr}
    return pairs.length
end

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = divisibleSumPairs n, k, ar

puts result
