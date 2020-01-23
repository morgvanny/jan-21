require 'pry'

example_array = [1,2,"tree", {a: 26}, true]




line = ["Morgan", "Kevin", "Martha", "Mark"]
binding.pry
def name_tag_text(name)
  "Hi my name is #{name}"
end

line.each do |blue|
  puts name_tag_text(blue)
end

# a lot of the methods we discussed, weren't put in this file, and were just used in IRB, sorry
