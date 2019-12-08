#!/bin/ruby

# https://www.hackerrank.com/challenges/counting-valleys/problem

require 'json'
require 'stringio'

# Complete the countingValleys function below.
def countingValleys(n, s)
  arr = s.chars
  alts = [0]
  arr.each{|p| alts.push(alts.last + (p == 'U' ? 1 : -1))}
  alts.push(0)
  
  count = 0
  in_valley = false
  alts.each_with_index{|a,i|
    in_valley = true if (a == -1 and in_valley == false)
    if in_valley == true and a == 0
      in_valley = false
      count += 1
    end
  }
  return count
end

n = gets.to_i

s = gets.to_s.rstrip

result = countingValleys n, s

puts result