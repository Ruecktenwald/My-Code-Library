require 'rails_helper'

describe "creation" do
  before do
    @user = create(:user)
    login_as(@user, :scope => :user)
    @post = create(:post)
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

