#!/bin/ruby

#https://www.hackerrank.com/challenges/day-of-the-programmer/problem

require 'json'
require 'stringio'

# Complete the dayOfProgrammer function below.
def dayOfProgrammer(year)
  leapYearJulian = -> (y){y % 4 == 0}
  leapYearGregorian = -> (y){y % 400 == 0 || (y % 4 == 0 && y % 100 != 0)}
  isLeap = -> (y){ y > 1917 ? leapYearGregorian.(y) : leapYearJulian.(y) }

  corrigeMes = -> (m){m > 7 ? m+1 : m}
  calcFev = -> (y){ y != 1918 ? ( isLeap.(y) ? 29 : 28 ) : 15 }
  calcMes = -> (m){corrigeMes.(m) % 2 == 0 ? 30 : 31}

  calendar = (1..12).each.map{|x| x == 2 ? calcFev.(year) : calcMes.(x) }
  
  mes = calendar.each_with_index.select{|v, i| i > 0 && calendar[0,i].reduce(:+) >= 256}.first[1] - 1
  dia = 256 - calendar[0,mes].reduce(:+)
  
  return "%02d.%02d.%02d" % [dia, mes+1, year]
end 

year = gets.strip.to_i

result = dayOfProgrammer year

puts result
