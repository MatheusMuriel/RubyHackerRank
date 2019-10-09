#!/bin/ruby

#https://www.hackerrank.com/challenges/plus-minus/problem

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
    lng = arr.length
    arr_resposta = []

    arr_resposta.push(arr.count{|x| x > 0})
    arr_resposta.push(arr.count{|x| x < 0})
    arr_resposta.push(arr.count{|x| x == 0})

    arr_resposta =  arr_resposta.map{|x| x.fdiv(lng).round(6)}
                                .map{|x| "#{'%.6f' % x }"}

    puts arr_resposta
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr
