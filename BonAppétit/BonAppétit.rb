#!/bin/ruby

#https://www.hackerrank.com/challenges/bon-appetit/problem

require 'json'
require 'stringio'

# Complete the bonAppetit function below.
def bonAppetit(bill, k, b)
  bActual = (bill.reduce(:+)-bill[k]) / 2
  puts b == bActual ? "Bon Appetit" : "#{b-bActual}"
end

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

bill = gets.rstrip.split.map(&:to_i)

b = gets.strip.to_i

bonAppetit bill, k, b
