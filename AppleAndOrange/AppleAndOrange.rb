#!/bin/ruby

#https://www.hackerrank.com/challenges/apple-and-orange/problem

require 'json'
require 'stringio'

# Complete the countApplesAndOranges function below.
def countApplesAndOranges(s, t, a, b, apples, oranges)
    vrf_fruit_fall = -> (f, x){(f + x).between?(s, t)}
    puts apples.find_all{|x| vrf_fruit_fall.(a, x)}.length
    puts oranges.find_all{|x| vrf_fruit_fall.(b, x)}.length
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
