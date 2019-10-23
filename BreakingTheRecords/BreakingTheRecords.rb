#!/bin/ruby

#https://www.hackerrank.com/challenges/breaking-best-and-worst-records/

require 'json'
require 'stringio'

# Complete the breakingRecords function below.
def breakingRecords(scores)
    max = scores[0]
    min = scores[0]

    breaks_up = scores.select{|s| (s > max) ? (max = s) : false}
    breaks_dw = scores.select{|s| (s < min) ? (min = s) : false}

    return [breaks_up.length, breaks_dw.length]
end

n = gets.to_i

scores = gets.rstrip.split(' ').map(&:to_i)

result = breakingRecords scores

p result
puts "---"