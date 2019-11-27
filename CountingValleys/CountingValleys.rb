#!/bin/ruby

# https://www.hackerrank.com/challenges/counting-valleys/problem

require 'json'
require 'stringio'

# Complete the countingValleys function below.
def countingValleys(n, s)
    arr = s.chars
    arr.pop; arr.shift;
    arr = arr.partition{|a|a=='U'}
    return (arr[0].length - arr[1].length).abs / 2
end

n = gets.to_i

s = gets.to_s.rstrip

result = countingValleys n, s

puts result