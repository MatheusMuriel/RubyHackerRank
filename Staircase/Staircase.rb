#!/bin/ruby

#https://www.hackerrank.com/challenges/staircase/

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(n)
    arr = Array.new(n){Array.new(n){" "}}

    arr.each_with_index{|linha, i| 
        puts linha.each_with_index.map{|coluna, j| 
            coluna = (j <= i) ? "#" : " "}.reverse.join}
end

n = gets.to_i

staircase n
