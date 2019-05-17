require 'rails_helper'

feature "creation" do

  it "user can be created" do

    @user = FactoryGirl.create(:user)
    login_as(@user, :scope => :user)

    expect(@user).to be_valid
  end 

  it "user cannot be created without first_name, last_name, email, password, and password_confirmation" do
    
    visit new_user_session_path
    click_on("Sign up")
    click_on("Sign up")
    
    expect(page).to have_content("Email can't be blank")
    expect(page).to have_content("First name can't be blank")
    expect(page).to have_content("Last name can't be blank")  
    expect(page).to have_content("Password can't be blank")
    expect(page).to have_content("Password confirmation can't be blank")
  end

end

