#!/bin/ruby

#https://www.hackerrank.com/challenges/day-of-the-programmer/problem

require 'json'
require 'stringio'

# Complete the dayOfProgrammer function below. 256
def dayOfProgrammer(year)

    leapYearJulian = -> (year){year % 4 == 0}
    leapYearGregorian = -> (year){year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)}
    calendar = (1..12).each.map{|x| (x == 2 ? ((year > 1917 ? (leapYearGregorian.(year) ? 29 : 28) : (leapYearJulian.(year) ? 29 : 28))) : (x > 7 ? x+1 : x) % 2 == 0 ? 30 : 31) }
    
    mes = calendar.each_with_index.select{|v, i| i > 0 && calendar[0,i].reduce(:+) >= 256}.first[1] - 1
    dia = 256 - calendar[0,mes].reduce(:+)
    
    return "%02d.%02d.%02d" % [dia, mes+1, year]
end 

year = gets.strip.to_i

result = dayOfProgrammer year

puts result