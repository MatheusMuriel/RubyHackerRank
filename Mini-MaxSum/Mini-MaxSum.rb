#!/bin/ruby

#https://www.hackerrank.com/challenges/mini-max-sum/problem

require 'json'
require 'stringio'

# Complete the miniMaxSum function below.
def miniMaxSum(arr)
    resp = arr.combination(4).minmax_by{|x| x.sum}.map{|x| x.sum}
    puts resp[0].to_s + " " + resp[1].to_s
end

arr = gets.rstrip.split(' ').map(&:to_i)

miniMaxSum arr
