def XO(str)
  os = 0
  xs = 0
  str.downcase.each_char do |c|
    if c == 'x'
      xs += 1
      elsif c == 'o'
        os += 1
    end
  end
  os == xs
end

puts XO('xo')
puts XO('xXoo')
puts XO('xXoo112')
puts XO('xoo')
puts 'http://www.codewars.com/kata/55908aad6620c066bc00002a/train/ruby'
