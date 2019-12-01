#!/bin/ruby

# https://www.hackerrank.com/challenges/counting-valleys/problem

require 'json'
require 'stringio'

# Complete the countingValleys function below.
def countingValleys(n, s)
  arr = s.chars
  alts = [0]
  arr.each_with_index{ |p,i|
    alts.push((p == 'U') ? alts.last + 1 : alts.last - 1)}
  valleys = alts.count(0) / 2
  return valleys
end

n = gets.to_i

s = gets.to_s.rstrip

result = countingValleys n, s

puts result