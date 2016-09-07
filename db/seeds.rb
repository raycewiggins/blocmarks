# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Random Data
# 10.times do
#   User.create!(
#     email: Faker::Internet.email,
#     password: Faker::Internet.password
#   )
# end
# users = User.all
#
# 20.times do
#   Topics.create!(
#     title: Faker::Book.title
#   )
# end
# topics = Topic.all
#
# 20.times do
#   Bookmarks.create!(
#     url: Faker::Book.title
#   )
# end
# bookmarks = Bookmark.all

# Sample User
standard = User.create!(
  email:    'standard@example.com',
  password: 'helloworld'
)

#Output
puts 'Seed finished'
puts "#{Topic.count} topics created"
puts "#{Bookmark.count} bookmarks created"
