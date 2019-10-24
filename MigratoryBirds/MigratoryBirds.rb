#!/bin/ruby

#https://www.hackerrank.com/challenges/migratory-birds

require 'json'
require 'stringio'

# Complete the migratoryBirds function below.
def migratoryBirds(arr)
    av_frec = Hash.new(0)
    frecs = (1..5).each{|av| av_frec[av] = arr.count(av)}
    max = av_frec.max_by{|k,v| v}[0]
    return max
end

arr_count = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

result = migratoryBirds arr

puts result
