require 'rails_helper'

describe 'User' do

   before do
    @user = FactoryGirl.create(:user)
    login_as(@user, :scope => :user)
  end

  it "can sign out" do

    visit root_path
    click_on('Log Out')

    expect(page).to have_content('Log in')
  end
end