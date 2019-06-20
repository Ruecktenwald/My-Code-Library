require 'rails_helper'

describe "creation" do
  before do
    @category = FactoryBot.create(:category)
    @user = FactoryBot.create(:user)
    login_as(@user, :scope => :user)
    @post = FactoryBot.create(:post)
  end

  it "can be created" do
    expect(@post).to be_valid
  end

  it "of post cannot be created if category is empty" do
    @post.category = nil
    expect(@post).to_not be_valid
  end

  it "of post cannot be created if description is empty" do
    @post.description = nil
    expect(@post).to_not be_valid
  end

  it "of post cannot be created if code is empty" do
    @post.code = nil
    expect(@post).to_not be_valid
  end
end

