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
  alts.shift
  
  in_vall = false
  count_valls = 0
  alts.each_with_index{|a,i| 
    if a == 0 and in_vall == false 
      count_valls += 1 
      in_vall = true
    elsif a == 0 and in_vall == true
      p_val = alts[i+1]
      if !p_val.nil? 
        if p_val > 0 
          in_vall = false
        end
      #else
        #count_valls += 1
        #puts i
      end
    elsif in_vall == true and a > 0
      in_vall == false
    end
  }
  p alts
  return count_valls
end

n = gets.to_i

s = gets.to_s.rstrip

result = countingValleys n, s

puts result