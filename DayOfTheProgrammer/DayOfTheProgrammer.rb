#!/bin/ruby

#https://www.hackerrank.com/challenges/day-of-the-programmer/problem

require 'json'
require 'stringio'

# Complete the dayOfProgrammer function below. 256
def dayOfProgrammer(year)

    leapYearJulian = -> (year){year % 4 == 0}
    leapYearGregorian = -> (year){year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)}
    calendar = (1..12).each.map{|x| (x == 2 ? ((year > 1917 ? (leapYearGregorian.(year) ? 29 : 28) : (leapYearJulian.(year) ? 29 : 28))) : (x > 7 ? x+1 : x) % 2 == 0 ? 30 : 31) }

end

year = gets.strip.to_i

result = dayOfProgrammer year

puts result