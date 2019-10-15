#!/bin/ruby

# hackerrank.com/challenges/grading/problem

require 'json'
require 'stringio'

#
# Complete the 'gradingStudents' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY grades as parameter.
#
#If the difference between the grade and the next multiple of 5 is less than 3, round grade up to the next multiple of 5.
#If the value of grade is less than 38, no rounding occurs as the result will still be a failing grade.

def gradingStudents(grades)
    inf = 1.upto(Float::INFINITY)
    next_mltp_of_5 = -> (num){inf.lazy.select{|x| x if x % 5 == 0 and x >= num}.first(1)}
    mults = (0..3).to_a
    rouder = -> (num){ mults.map{|m| next_mltp_of_5.(num)[0] if (next_mltp_of_5.(num)[0] - (num)) < 3 }.first}

    return grades.map{|grade| 
        rond = rouder.(grade)
        if rond.nil? or grade < 38
            grade
        else
            rond
        end
    }
end

grades_count = gets.strip.to_i

grades = Array.new(grades_count)

grades_count.times do |i|
    grades_item = gets.strip.to_i
    grades[i] = grades_item
end

result = gradingStudents grades
