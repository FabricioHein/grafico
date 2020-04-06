# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dates_list = []
10.times do
  dates_list << Time.now - rand(1..365).day
end
​
100.times do
  User.create(birthday: dates_list.sample, gender: %i[male female].sample)
end