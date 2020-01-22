string = 'specific thing'

if string.empty?
  puts "I'm printing anyway"
elsif string == "specific thing"
  puts "the string said: #{string}"
else
  puts 'something'
end

if string.length > 3
  puts 'the string has 4 or more letters'
end

def empty
puts 'the string is empty'
end

def not_empty
puts 'the string is not empty'
end

puts "helloas asd;lkfja;sldkfj;alskdjfa;slkdjf;alskdjf;alskdjf" unless true


string.empty? ? empty : not_empty

name = "Alice"

case name
 
  when "Alice"
    puts "Hello, Alice!"
  when "The White Rabbit"
    puts "Don't be late, White Rabbit"
  when "The Mad Hatter"
    puts "Welcome to the tea party, Mad Hatter"
  when "The Queen of Hearts"
    puts "Please don't chop off my head!"
  else 
    puts "Whoooo are you?"
end

number = 9

case number
  when 1..4
    puts 'between 1 and 4'
  when 5..8
    puts 'between 5 and 8'
  else
    puts 'not in range'
end

if number.between?(1..4)
  puts 'between 1 and 4'
elsif number.between?(5..8)
  puts 'between 5 and 8'
else
  puts 'not in range'
end

