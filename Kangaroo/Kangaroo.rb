#!/bin/ruby

#https://www.hackerrank.com/challenges/kangaroo/problem

require 'json'
require 'stringio'

# Complete the kangaroo function below.
def kangaroo(x1, v1, x2, v2)
    att_jump = -> (_x1, _x2){[(_x1+v1),(_x2+v2)]}

    jumps = [[x1, x2]]
    for i in (1..5)
        ar_ant = jumps[i-1]
        nw_ar = att_jump.(ar_ant[0], ar_ant[1])
        jumps.push(nw_ar)
    end

    p jumps
end

x1V1X2V2 = gets.rstrip.split

x1 = x1V1X2V2[0].to_i

v1 = x1V1X2V2[1].to_i

x2 = x1V1X2V2[2].to_i

v2 = x1V1X2V2[3].to_i

result = kangaroo x1, v1, x2, v2

#p result
