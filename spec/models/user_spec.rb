require 'rails_helper'


describe "creation" do

  before do
    @user = build(:user)
    login_as(@user, :scope => :user)
  end

  it "can be created" do
    expect(@user).to be_valid
  end 

  it "cannot be created without first_name and last_name" do
    @user.first_name = nil
    @user.last_name = nil

    expect(@user).to_not be_valid
  end
end

