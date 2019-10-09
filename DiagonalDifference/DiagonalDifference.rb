#!/bin/ruby

#https://www.hackerrank.com/challenges/diagonal-difference/problem

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)

    sum_diagonal_1 = arr.each_with_index.map{|sb_arr, index| sb_arr[index]}.reduce(:+)

    sum_diagonal_2 = arr.reverse.each_with_index.map{|sb_arr, index| sb_arr[index]}.reduce(:+)

    diff = (sum_diagonal_1 - sum_diagonal_2).abs()

    return diff
end

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

puts result
