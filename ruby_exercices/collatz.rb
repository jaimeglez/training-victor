def collatz n
  cont=1
  while n != 1
  	if n.modulo(2)==0 #option for refractoring
  		n=n/2         #n=n.even? ? n=n/2 : n=n*3+1
  	else
  		n=n*3+1
  	end
  	cont += 1
  end
  cont
end

puts collatz(20)
puts collatz(15)
puts "http://www.codewars.com/kata/54fb963d3fe32351f2000102/train/ruby"