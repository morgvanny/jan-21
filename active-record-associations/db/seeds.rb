10.times do
  Patient.create(name:Faker::Name.name, age:rand(0..100))
end