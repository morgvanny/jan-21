require 'pry'

def my_all?(collection)
  i = 0
  answer = true
  while i < collection.length
    answer = false unless yield(collection[i])
    i += 1
  end
  answer
end


