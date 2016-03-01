def nato(word)
  letters =  {
    "A"=> "Alpha",  "B"=> "Bravo",   "C"=> "Charlie",
    "D"=> "Delta",  "E"=> "Echo",    "F"=> "Foxtrot",
    "G"=> "Golf",   "H"=> "Hotel",   "I"=> "India",
    "J"=> "Juliett","K"=> "Kilo",    "L"=> "Lima",
    "M"=> "Mike",   "N"=> "November","O"=> "Oscar",
    "P"=> "Papa",   "Q"=> "Quebec",  "R"=> "Romeo",
    "S"=> "Sierra", "T"=> "Tango",   "U"=> "Uniform",
    "V"=> "Victor", "W"=> "Whiskey", "X"=> "X-ray",
    "Y"=> "Yankee", "Z"=> "Zulu"
  }
  s=""
  word.upcase.each_char.with_index do |char, index|
    if index==word.length-1
    	s << letters[char]
    else
    	s << letters[char] << " "
    end
  end
 return s
end

pust nato("Banana")
pust nato("babble")
pust "http://www.codewars com/kata/54530f75699b53e558002076/train/ruby"