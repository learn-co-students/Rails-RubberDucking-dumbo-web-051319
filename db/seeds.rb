10.times do
  Student.create(name: Faker::Name.name, mod: rand(1..5))
end


Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student_id: 1)
Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student_id: 2)
Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student_id: 3)
Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student_id: 3)
Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student_id: 4)
Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student_id: 5)
Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student_id: 5)
Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student_id: 5)
Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student_id: 6)
Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student_id: 7)
Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student_id: 8)

