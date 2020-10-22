require 'faker'

#Destroys all the content previously created before creating new content
User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
Hastag.destroy_all

#Creates 10 cities in the City table
10.times do |city|
  City.create!(name: Faker::Address.city, zip_code: Faker::Number.number(digits: 5))
end
puts "10 fake cities have been generated"

#Creates 30 users in the User table
30.times do |user|
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: rand(13..50), description: Faker::Lorem.paragraph, email: Faker::Internet.email, city_id: City.all.sample.id)
end
puts "30 fake users have been generated"

#Creates 40 gossips in the Gossip table
40.times do |gossip|
  Gossip.create!(title: Faker::Book.title, content: Faker::TvShows::HowIMetYourMother.quote, user_id: User.all.sample.id)
end
puts "40 fake gossips have been generated"

#Creates 10 tags in the Tag table
10.times do |tag|
  Tag.create(title: Faker::Game.genre)
end
puts "10 fake tags have been generated"

#Creates 30 hashtags in the Hastag table
30.times do |hastag|
  Hastag.create(tag_id: Tag.all.sample.id, gossip_id: Gossip.all.sample.id)
end
puts "30 fake hashtags have been generated"

#Creates 40 private messages in the PrivateMessage table
40.times do |private_message|
  PrivateMessage.create(content: Faker::TvShows::NewGirl.quote, sender_id: User.all.sample.id, recipient_id: User.all.sample.id)
end
puts "40 fake private messages have been generated"

#Creates 60 comments in the Comment table
60.times do |comment|
  Comment.create(content: Faker::TvShows::Friends.quote, user_id: User.all.sample.id, gossip_id: Gossip.all.sample.id)
end
puts "60 fake comments have been generated"
