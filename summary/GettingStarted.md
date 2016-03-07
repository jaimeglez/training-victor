# Part I Facets of Ruby

## Getting Started

### Important commands


cd: To navigate to a directory.

Example
```sh
$ cd /projects/trainig_ruby //go to trainig_ruby directory
$ cd ~ or only cd //go to home directory
```

pwd: Show the path of directory currently

Example
```sh
$ cd /projects/trainig_ruby 
$ pwd 
/home/projects/trainig_ruby //output
```

mkdir: Create a new diretory.

Example
```sh
$mkdir ~/projects/hello_ruby //create directory called hello_ruby using ~ to don't have to enter the full path
```

### Installing Ruby with RVM

Ruby Version Manager (RVM),written by Wayne E. Seguin is atoll that lets have multilple independent Ruby installations on the msame machine.

##### Steps
1. Install the curl utility
```sh
$ sudo apt-get update
$ sudo apt-get install curl
```
2. Install mpapis public key 
```sh
$ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
```
3. Install RVM stable
```sh
$ \curl -sSL https://get.rvm.io | bash -s stable 
or install RMV with ruby
$\curl -sSL https://get.rvm.io | bash -s stable --ruby
```
4. Source the rvm scripts 
```sh
$ source ~/.rvm/scripts/rvm
```
Others
```sh
$ rvm install ruby_version //install specific versions of Ruby
$ rvm use ruby_version  //Switch between the Ruby versions
$ rvm --default ruby_version  //Default use version
```

### Running Ruby

Run Ruby is very simply, only we typed ruby an the shell prompt.

Example
```sh
$ ruby
puts "Hello, is this my summary of Programming Ruby 1.9 Book!" //instruccion on Ruby
^D //Ctrl+D end-of-file
Hello, Hello, is this my summary of Programming Ruby 1.9 Book! //output
```

You run irb from the command line. Once it starts, just type in Ruby code. It will show you the value of each expression as it evaluates it. Exit an irb session by typing exit or by using the end-of-file Ctrl+D or Ctrl+Z.

Example
```sh
irb(main):001:0> def multiplica(a,b)
irb(main):002:1> a*b
irb(main):003:1> end
=> :multiplica
irb(main):004:0> multiplica(3,2)
=> 6
```

Extension of Ruby programas is .rb
To run a Ruby program, only giving it script name as an argument.

Example
```sh
$ ruby myprogram.rb
Or
./myprogram.rb
```

To show Ruby rdoc documentation from the command line, just use the ri command.
Install documentation if not install.
```sh
$ rvm docs generate
```
Example
```sh
$ ri String
```

