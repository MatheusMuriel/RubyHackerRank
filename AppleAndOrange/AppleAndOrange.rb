#!/bin/ruby

#https://www.hackerrank.com/challenges/apple-and-orange/problem

require 'json'
require 'stringio'

# Complete the countApplesAndOranges function below.
def countApplesAndOranges(s, t, a, b, apples, oranges)
    house = (s..t).to_a

    s_apples = apples.map{|x| a + x}
    s_oranges = oranges.map{|x| b + x}

    apples_falled = s_apples.find_all{|a| house.include?(a)}
    oranges_falled = s_oranges.find_all{|o| house.include?(o)}

    puts apples_falled.length
    puts oranges_falled.length
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
