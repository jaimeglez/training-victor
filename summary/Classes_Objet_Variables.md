# Chapter 3

## Classes, Objects, and Variables

### Ruby Is an Object-Oriented Language

#### Classes
Instance a Class
```ruby
a_book = BookInStock.new
another_book = BookInStock.new
```
The initialize method(constructor)
Store this state in instance variables inside the object. In Ruby has its own distinct set of instance variables, each object can have its own unique state.
```ruby
class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
end


b1 = BookInStock.new("isbn1", 3)#instance with parameters
```
Ruby has a standard message, to_s , that it sends to any object it wants to render as a string. So, let’s override the default implementation of to_s to give a better rendering of objects.
```ruby
class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end

b1 = BookInStock.new("isbn1", 3)
puts b1

#output isbn1, price: 3.0
```
#### Objects and Attributes
In Ruby externally visible facets of an object are called its attributes..
```ruby
class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def isbn
    @isbn
  end
  
  def price
    @price
  end
end
book = BookInStock.new("isbn1", 12.34)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"

#output
#ISBN= isbn1
#Price= 12.34
```
But Ruby provides a convenient short-cut. attr_reader creates these attribute reader methods.
```ruby
class BookInStock
  
  attr_reader :isbn, :price
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
end

book = BookInStock.new("isbn1", 12.34)
puts "ISBN= #{book.isbn}"
puts "Price = #{book.price}"

#produces:
#ISBN= isbn1
#Price= 12.34
```
##### Writable Attributes
In Ruby,you do that by creating a Ruby method whose name ends with an equals sign. These methods can be used as the target of assignments.
```ruby 
class BookInStock
  attr_reader :isbn, :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def price=(new_price)
    @price = new_price
  end
end
```
Ruby provides a shortcut for creating these simple attribute-setting methods. If you want a write-only accessor, you can use the form attr_writer , but to want both a reader and a writer for a given attribute, use the attr_accessor method.
```ruby
class BookInStock
  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
end

book = BookInStock.new("isbn1", 33.80)

puts "ISBN= #{book.isbn}"
puts "Price= #{book.price}"
book.price = book.price * 0.75
puts "New price = #{book.price}"

#produces:
#ISBN= isbn1
#Price= 33.8
#New price = 25.349999999999998
```
##### Virtual Attributes

These attribute-accessing methods do not have to be just simple wrappers around an object’s instance variables.
We can take this even further and allow people to assign to our virtual attribute, mapping the value to the instance variable internally
```ruby
class BookInStock
  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def price_in_cents #virtual attr
    Integer(price*100 + 0.5)
  end

  def price_in_cents=(cents) #virtual attr
    @price = cents / 100.0
  end
end

book = BookInStock.new("isbn1", 33.80)
puts "Price= #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
book.price_in_cents = 1234
puts "Price= #{book.price}"
puts "Price in cents = #{book.price_in_cents}"

#Produce
Price =33.8
Price in cents =3380
Price =12.34
Price in cents =1234
```
#### Classes Working with Other Classes


#### Access Control
Ruby gives you three levels of protection:

* Public methods can be called by anyone—no access control is enforced. Methods are public by default (except for initialize , which is always private).
* Protected methods can be invoked only by objects of the defining class and its subclasses. Access is kept within the family.
* Private methods cannot be called with an explicit receiver—the receiver is always the current object, also known as self . This means that private methods can be called only in the context of the current object; you can’t invoke another object’s private methods.
```ruby
class MyClass
  def method1# default is 'public'
    #...
  end

  protected 
  def method2 # subsequent methods will be 'protected'
    #...                # will be 'protected'
  end 

  private
  def method3 # subsequent methods will be 'private'
    #...              # will be 'private'
  end 

  public
  def method4 # subsequent methods will be 'public'
    #...      # so this will be 'public'
  end
end
```
```ruby
class MyClass
  def method1
  end
  def method2
  end
# ... and so on

public :method1, :method4
protected :method2
private :method3
end
```
```ruby
class Transaction
  def initialize(account_a, account_b)
    @account_a = account_a
    @account_b = account_b
  end
  private
  #Bock of methods
  public
  #Bock of methods
end
```

```ruby
class Account
  attr_reader :cleared_balance # accessor method 'cleared_balance'
  protected :cleared_balance # but make it protected

  def greater_balance_than?(other)
    @cleared_balance > other.cleared_balance
  end
end
```

#### Variables
Variables are used to keep track of objects; each variable holds a reference to an object.
```ruby
person1 = "Tim"
puts "The object in 'person' is a #{person1.class}" #String
puts "The object has an id of #{person1.object_id}" #2151898660
puts "and a value of '#{person1}'" # Tim

person2 = person1
person1[0] = 'J'

puts "Person1 is #{person1}" # print Jim
puts "Person2 is #{person2}" # print Tim

person3 = person1.dup # creates a new string object with identical contents
puts "Person3 is #{person3} #print Jim 
```

