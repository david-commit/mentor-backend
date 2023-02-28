# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Begin Seeding.."
puts "Seeding expertises.."
fields = ["Content Writing", "Data Science", "UI/UX Design", "Digital Marketing", "Product Management", "Software/Web Development"]
fields.length.times do |i|
 Expertise.create!(field: fields[i])
end

puts "Seeding seniority levels.."
levels = ["All", "Entry Level", "Senior", "Manager", "Director", "Lead", "Executive", "Founder"]
levels.length.times do |i|
 Seniority.create!(level: levels[i])
end