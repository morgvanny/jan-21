# My `#collect`

## Objectives

1. Build a method that yields members of a collection to a block. 
2. Control the return value of a method that uses `yield` such that it returns a new collection. 

## Instructions

You'll be writing your code in `lib/my_collect.rb`. 

Let's say we are writing an app to help teachers manage their students. Our teacher has a list of students:

```ruby
["Tim Jones", "Tom Smith", "Jim Campagno"]
```

The list includes the first and last name of each student, but our teacher needs to collect a list of *just their first names*. 


You are writing a method that behaves just like the real `#collect` method. It should take in an argument of a collection, iterate over that collection using a `while` loop, and execute the code in the block you call it with for each element in the collection (use the `yield` keyword). It should return the modified collection. 

So, if our teacher uses `#my_collect` to collect the first name of his students, it should work like this: 

```ruby
array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end
```

Should return: 

```ruby
["Tim", "Tom", "Jim"]
```