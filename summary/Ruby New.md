# Chapter 2

## Ruby.new

### Ruby Is an Object-Oriented Language

In Ruby, these objects are created by calling a constructor, a special method associated with a class.
#### Calling a constructor
```ruby
song1 = Song.new("Ruby Tuesday")
song2 = Song.new("Enveloped in Python")
# and so on
```
#### Some method calls
```ruby
"gin joint".length #string length
"Rick".index("c") #find the index of the letter c
42.even? #if int is an even number
sam.play(song) #play a song
```

Some difference between Ruby and Java
(determine an absolute value on number)
```java
num = Math.abs(num)
```
```ruby
num= -1234 # => -1234
positive = num.abs # => 1234
```
#### Some Basic Ruby

Define method
```ruby
def name_method(parameters)
  #code
  retun result
end
```
##### Interpolation
Interpolation allows Ruby code to appear within a string. The result of evaluating that code is inserted into the string.
```ruby
 "1 + 2 = #{1 + 2}"    #=> "1 + 2 = 3"
 #{expression}
```

##### Example variable, class, and constant names
![Alt text](variables.png?raw=true "Optional Title")

### Array and Hashes
Ruby’s arrays and hashes are indexed collections. Both store collections of objects, accessible using a key. With arrays, the key is an integer, whereas hashes support any object as a key.

An array containing an integer, a string, and a floating-point number.
Example
```ruby
a = [ 1, 'dog',3.14] #array with three elements
puts "The first element is #{a[0]}" #print 1
# set the third element
a[2] = nil
puts "The array is now #{a.inspect}" #print [1,"dog",nil]
#nil is an object
```

Ruby has a shortcut; %w.
```ruby
a = [ 'ant', 'bee', 'cat', 'dog', 'elk' ]
# this is the same:
a = %w{ ant bee cat dog elk }
```

A hash literal uses braces rather than square brackets. The literal must supply two objects for every entry: one for the key, the other for the value. The key and value are normally separated by => .

```ruby
inst_section = Hash.new(0) #The default value is zero
#Or
inst_section = {
 'cello' => 'string',
 'clarinet' => 'woodwind',
 'drum' => 'percussion',
 'oboe' => 'woodwind',
}

p inst_section['cello'] # print string
```

### Symbols
Symbols are simply constant names, don’t have to predeclare and that are be unique.
Using the :name and :"string".
These are frequently used as keys in hashes.
Ruby 1.9 introduces a new syntax, use name: value pairs to create a hash if the keys are symbols.
```ruby
inst_section = {
 cello: 'string',
 clarinet: 'woodwind',
 drum: percussion',
 oboe: 'woodwind',
}

puts "An oboe is a #{inst_section[:oboe]} instrument"
#output An oboe is a woodwind instrument
```

###Control Structures
```ruby
if condition
  #code
elsif condition
 #code
else
 #code
end


while condition and condition2
 #code
end

```
Return value, the kernel method gets returns the next line from the standard input stream or nil when the end of the file is reached
```ruby
while line = gets
  puts line.downcase #return last line
end
```


Statement modifiers, simply write the expression, followed by if or while and the condition.
```ruby
if radiation > 3000
  puts "Danger, Will Robinson"
end

#the same
puts "Danger, Will Robinson" if radiation > 3000



square = 4
while square < 1000
 square = square*square
end

#the same
square = 4
square = square*square while square < 1000
```

### Regular Expressions
A regular expression is a special sequence of characters that helps you match or find other strings or sets of strings using a specialized syntax held in a pattern.

### Blocks and Iterators
We can use code blocks to implement callbacks. Code blocks are just chunks of code between braces or between do and end.
```ruby
{ puts "Hello" }
#Or
do
club.enroll(person)
person.socialize
end
```
Ruby each Iterator:
The each iterator returns all the elements of an array or a hash.
```ruby
collection.each do |variable|
   code
end
```

Ruby collect Iterator:
The collect iterator returns all the elements of a collection.
```ruby
collection = collection.collect
```

