#!/bin/ruby

#https://www.hackerrank.com/challenges/between-two-sets/

require 'json'
require 'stringio'

#
# Complete the 'getTotalX' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def getTotalX(a, b)
    is_factor = -> (n1, n2){n1 % n2 == 0}

    max = [a.max, b.max].max

    ns_between = (1..max).each.select{ |i|
        a.all?{|_a| is_factor.(i, _a)} && b.all?{|_b| is_factor.(_b, i)}
    }

    return ns_between.length
end

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i

m = first_multiple_input[1].to_i

arr = gets.rstrip.split.map(&:to_i)

brr = gets.rstrip.split.map(&:to_i)

total = getTotalX arr, brr

puts total
