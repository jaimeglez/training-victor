def squareSum(numbers)
  sum=0
  numbers.each {|n| sum+=(n*n)}
  sum
  #numbers.collect{|n| sum=sum+(n*n)}
end

puts squareSum([1,2,2])
puts squareSum([1,2,2,5])
puts "http://www.codewars.com/kata/515e271a311df0350d00000f/train/ruby"

#Test created
#Test.assert_equals(squareSum([1,2,2]),9)
#Test.assert_equals(squareSum([1,2,2,5]),34)