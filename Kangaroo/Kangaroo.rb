#!/bin/ruby

#https://www.hackerrank.com/challenges/kangaroo/problem

require 'json'
require 'stringio'

# Complete the kangaroo function below.
def kangaroo(x1, v1, x2, v2)
    if v2 >= v1 
        return 'NO'
    end

    r = 1..Float::INFINITY

    att_jump = -> (_x1, _x2){[(_x1+v1),(_x2+v2)]}
    anls_rate = -> (jumps) {
        last_jumps = jumps.reverse_each{|j| j}.first(3)
        diffs = last_jumps.each.map{|j| j[1] - j[0]}
        taxa = diffs.each_with_index.map{|dff, i| i > 0 ? dff < diffs[i-1] : true}
        return taxa.all?
    }

    jumps = [[x1, x2]]

    r.lazy.map{
        |i|
        ar_ant = jumps[i-1]
        nw_ar = att_jump.(ar_ant[0], ar_ant[1])
        jumps.push(nw_ar)
        if nw_ar[0] == nw_ar[1]
            return 'YES'
        end
        if !anls_rate.(jumps)
            return 'NO'
        end
    }.force
    
    return 'NO'
end

x1V1X2V2 = gets.rstrip.split

x1 = x1V1X2V2[0].to_i

v1 = x1V1X2V2[1].to_i

x2 = x1V1X2V2[2].to_i

v2 = x1V1X2V2[3].to_i

result = kangaroo x1, v1, x2, v2

puts result
