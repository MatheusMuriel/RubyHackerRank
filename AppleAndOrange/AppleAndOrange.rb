#!/bin/ruby

#https://www.hackerrank.com/challenges/apple-and-orange/problem

require 'json'
require 'stringio'

# Complete the countApplesAndOranges function below.
def countApplesAndOranges(s, t, a, b, apples, oranges)
    
end

st = gets.rstrip.split

s = st[0].to_i

t = st[1].to_i

ab = gets.rstrip.split

a = ab[0].to_i

b = ab[1].to_i

mn = gets.rstrip.split

m = mn[0].to_i

n = mn[1].to_i

apples = gets.rstrip.split(' ').map(&:to_i)

oranges = gets.rstrip.split(' ').map(&:to_i)

countApplesAndOranges s, t, a, b, apples, oranges
