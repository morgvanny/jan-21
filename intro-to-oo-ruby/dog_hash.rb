require 'pry'

my_dog_1 = {
    name: "Cricket Whatever",
    breed: "Golden Retriever Mix",
    temperment: "Lazy",
    weight: 55,
    energy: 100,
    hunger: 0
}

my_dog_2 = {
    name: "Griffin",
    breed: "Carolina Dog",
    temperment: "Annoying",
    weight: 65,
    energy: 100,
    hunger: 100
}

my_dog_3 = {
    name: "Barb",
    breed: "Maltese",
    temperment: "Annoying",
    weight: 15,
    energy: 100,
    hunger: 100
}
human_1 = {
  name: "Barb",
  age: 22
}
puts my_dog_2[:name]
puts my_dog_1[:full_name]
puts my_dog_3[:name]


def walk_dog(dog)
  dog[:energy] -= 20
  dog[:hunger] += 20
  dog
end

walk_dog(my_dog_1)



binding.pry