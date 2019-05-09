10.times do |post|
	Post.create!(category: 'rails', description: 'How to update gem file', code: 'bundle update')

end

puts "There were 10 posts created."