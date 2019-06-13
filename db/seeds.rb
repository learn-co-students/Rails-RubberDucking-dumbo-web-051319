7.times do
  Student.create(name: Faker::Name.name, mod: rand(1..5))
end

10.times do
  Duck.create(name: Faker::Dog.unique.meme_phrase, description: Faker::Dog.breed, student_id: Student.all.sample.id)
end
