#!/bin/ruby

#https://www.hackerrank.com/challenges/drawing-book/problem

#
# Complete the pageCount function below.
#
def pageCount(n, p)
    book = (0..n).each_slice(2).to_a
    return [book, book.reverse]
            .map{|bk| bk.each_with_index
                        .find{|page, i| page.include?(p)}[1]}
                        .min
end

n = gets.to_i

p = gets.to_i

result = pageCount n, p

puts result
