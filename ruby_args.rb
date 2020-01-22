def default_and_custom_greeting(name:, location:"somewhere")
  "Hello #{name}, from #{location}!"
end

puts default_and_custom_greeting(name:'Morgan')
default_and_custom_greeting(name:"Jill")
default_and_custom_greeting(name:"Ryan", location:"California")
puts default_and_custom_greeting(name: "Friend",location:"China")


def greeting(language="Ruby", name="Friend")
  puts "Hello, #{name}. We heard you are a great #{language} programmer."
end

greeting("Sophie")



