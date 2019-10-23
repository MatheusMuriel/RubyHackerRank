#!/bin/ruby

#https://www.hackerrank.com/challenges/kangaroo/problem

require 'json'
require 'stringio'

# Complete the kangaroo function below.
def kangaroo(x1, v1, x2, v2)
    if v2 >= v1 
        return 'NO'
    end

    att_jump = -> (_x1, _x2){[(_x1+v1),(_x2+v2)]}

    jumps = [x1, x2]

    while jumps[0] <= jumps[1] do
        nw_jump = att_jump.(jumps[0], jumps[1])
        
        if nw_jump[0] == nw_jump[1]
            return 'YES'
        end
        
        jumps = nw_jump
    end

    if nw_jump[0] != nw_jump[1]
        return 'NO'
    end
end

x1V1X2V2 = gets.rstrip.split

x1 = x1V1X2V2[0].to_i

v1 = x1V1X2V2[1].to_i

x2 = x1V1X2V2[2].to_i

v2 = x1V1X2V2[3].to_i

result = kangaroo x1, v1, x2, v2

puts result
