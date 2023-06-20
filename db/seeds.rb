# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Production.destroy_all
CrewMember.destroy_all

puts 'Seeding started...'

Production.create(title: 'Carmen', genre: 'Opera', budget: 78000, image: 'https://images.pexels.com/photos/15540740/pexels-photo-15540740/free-photo-of-flores.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', director: 'Christopher Nolan', ongoing: true, description: Faker::Food.description)
Production.create(title: 'Tenet', genre: 'Sci-Fi', budget: 1200000, image: 'https://images.pexels.com/photos/17246637/pexels-photo-17246637/free-photo-of-adobe-photoshop-creative-portrait.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', director: 'Felix Nyalenda', ongoing: false, description: Faker::Food.description)
Production.create(title: 'Scandal', genre: 'Drama', budget: 54200, image: 'https://images.pexels.com/photos/15540740/pexels-photo-15540740/free-photo-of-flores.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', director: 'Imelda Adhis', ongoing: false, description: Faker::Food.description )
Production.create(title: 'Fargo', genre: 'Thriller', budget: 975420, image: 'https://images.pexels.com/photos/15540740/pexels-photo-15540740/free-photo-of-flores.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', director: 'Tabitha Wanjala', ongoing: true, description: Faker::Food.description )
Production.create(title: 'Hangover', genre: 'Comedy', budget: 1257900, image: 'https://images.pexels.com/photos/15540740/pexels-photo-15540740/free-photo-of-flores.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', director: 'Willo Priest', ongoing: false, description: Faker::Food.description)
Production.create(title: 'Vikings', genre: 'History', budget: 347589, image: 'https://images.pexels.com/photos/15540740/pexels-photo-15540740/free-photo-of-flores.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', director: 'Hymie Bahati', ongoing: true, description: Faker::Food.description)

50.times {CrewMember.create(name: Faker::Name.name, job_title: 'Stagehand', production: Production.all.sample, salary: rand(400..2500))}

puts 'Seeding complete'