User.create!(email: "test@test.com", password: "secret", 
  password_confirmation: "secret", first_name: "Peter", last_name: "Wald",type: "AdminUser")

puts "One user was created."


10.times do |post|
	Post.create!(category: 'Rails', description: 'How to update gem file', code: 'bundle update', user_id: 1)
	Post.create!(category: 'Javascript', description: 'How to write a function', code: 'function sample() {};', user_id: 1)
	Post.create!(category: 'HTML', description: 'How to make a div', code: '<div></div>', user_id: 1)
	Post.create!(category: 'Ruby', description: 'How to write a block', code: 'do and end', user_id: 1)
end

puts "There were 10 posts created."