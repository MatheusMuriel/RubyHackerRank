#!/bin/ruby

#https://www.hackerrank.com/challenges/the-birthday-bar/

require 'json'
require 'stringio'

# Complete the birthday function below.
def birthday(s, d, m)
    valid_way = -> (arr){(arr.length == m) && (arr.sum == d)}
    ways = s.each_with_index.select{|c,i| valid_way.(s[i..((i+m)-1)])}
    return ways.length
end

n = gets.strip.to_i

s = gets.rstrip.split.map(&:to_i)

dm = gets.rstrip.split

d = dm[0].to_i

m = dm[1].to_i

result = birthday s, d, m

