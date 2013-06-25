require 'faker'

users = []

30.times do
  users << User.create(username: Faker::Internet.user_name,
              email: Faker::Internet.email,
              password: "123")
end

posts = []

60.times do
  posts << Post.create(title: Faker::Lorem.sentence(word_count = 5),
                       url: Faker::Internet.url)
end

comments = []

300.times do
  comments << Comment.create(content: Faker::Lorem.paragraph(sentence_count = 3))
end

posts.each do |post|
  post.update_attributes(:user_id => 1 + rand(30))
end

comments.each do |comment|
  comment.update_attributes(:user_id => users.sample.id)
  comment.update_attributes(:post_id => posts.sample.id)
end


