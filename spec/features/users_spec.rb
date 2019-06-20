require 'rails_helper'
RSpec.describe 'Inboxes responsive layout', js: true do

  describe 'User' do

    before do
      @user = FactoryBot.create(:user)
      login_as(@user, :scope => :user)
   end

    it "can sign out" do

      visit root_path
      click_on('Log Out')

      expect(page).to have_content('Log in')
    end
  end
end