# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

20.times do |i|
    Publicacione.create(titulo: Faker::Lorem.word, descripcion: Faker::Lorem.paragraph(sentence_count: 10))
  end

20.times do |i|
    Usuario.create(nombre: Faker::Artist.name, edad: Faker::Number.leading_zero_number(digits: 2), email: Faker::Internet.email)
end