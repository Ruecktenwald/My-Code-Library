require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "creation" do
  	before do
  		@post = Post.create(category: "rails", 
  			description: "How to migrate schema.", code: "rails db:migrate")
  	end

  	it "can be created" do
  		expect(@post).to be_valid
  	end

  	it "cannot be created" do
  		@post.category = nil
  		expect(@post).to_not be_valid
  	end
  	it "cannot be created" do
  		@post.description = nil
  		expect(@post).to_not be_valid
  	end
  	it "cannot be created" do
  		@post.code = nil
  		expect(@post).to_not be_valid
  	end
  end
end