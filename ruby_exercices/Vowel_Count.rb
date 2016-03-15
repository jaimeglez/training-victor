def getCount(inputStr)
  inputStr.downcase.count('aeiou')
end

puts getCount("ajauabaaaiouse")
puts getCount("abracadabra")
puts "http://www.codewars.com/kata/54ff3102c1bad923760001f3/train/ruby"

#Return the number (count) of vowels in the given string.