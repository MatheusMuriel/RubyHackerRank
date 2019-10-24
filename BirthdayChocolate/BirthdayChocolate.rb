#!/bin/ruby

#https://www.hackerrank.com/challenges/the-birthday-bar/

require 'json'
require 'stringio'

# Complete the birthday function below.
def birthday(s, d, m)


end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

s = gets.rstrip.split.map(&:to_i)

dm = gets.rstrip.split

d = dm[0].to_i

m = dm[1].to_i

result = birthday s, d, m

fptr.write result
fptr.write "\n"

fptr.close()
