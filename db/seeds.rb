10.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
users = User.all

20.times do
  Topic.create!(
    user: users.sample,
    title: Faker::Book.title
  )
end
topics = Topic.all

40.times do
  Bookmark.create!(
    topic: topics.sample,
    url: Faker::Book.title
  )
end
bookmarks = Bookmark.all

# Sample User
standard = User.create!(
  email:    'standard@example.com',
  password: 'helloworld'
)

# Output
puts 'Seed finished'
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Bookmark.count} bookmarks created"
