10.times do
  Student.create(name: Faker::Name.name, mod: rand(1..5))
end

5.times do
  Duck.create(name: Faker::Dog.breed, description: Faker::Dog.meme_phrase, student_id: rand(1..10))
end
