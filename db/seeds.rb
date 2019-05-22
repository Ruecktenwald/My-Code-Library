User.create!(email: "test@test.com", password: "secret", 
  password_confirmation: "secret", first_name: "Peter", last_name: "Wald",type: "AdminUser")

puts "One user was created."


#10.times do |post|
#	Post.create!(description: 'How to update gem file', code: 'bundle update', user_id: 1, category_id: 1)
#	Post.create!(description: 'How to write a function', code: 'function sample() {};', user_id: 1,category_id: 2)
#	Post.create!(description: 'How to make a div', code: '<div></div>', user_id: 1,category_id: 3)
#	Post.create!(description: 'How to write a block', code: 'do and end', user_id: 1, category_id: 4)
#end

#puts "There were 10 posts created."