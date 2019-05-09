require 'rails_helper'


RSpec.describe Post, type: :model do
  describe 'navigate' do
  
    feature 'index' do

      it 'can be reached successfully' do
        visit posts_path
        expect(page.status_code).to eq(200)
      end

      it 'has a title of Posts' do
        visit posts_path
        expect(page).to have_content(/Posts/)
      end
    end

  end

  feature 'creation' do

    before do

      user = User.create(email: "test@test.com", password: "secret", 
        password_confirmation: "secret", first_name: "Peter", last_name: "Wald")
      login_as(user, :scope => :user)

      visit new_post_path
    end
    
    it 'has a new form that can be reached' do

      expect(page.status_code).to eq(200)
    end

    it 'can be created from new form' do

      fill_in 'post[category]', with: "rails"
      fill_in 'post[description]', with: "How to install ruby gem."
      fill_in 'post[code]', with: "bundle install"

      click_on "Save"

      expect(page).to have_content("How to install ruby gem.")
    end

    it "will have a user associated with the post" do
      fill_in 'post[category]', with: "rails"
      fill_in 'post[description]', with: "How to destroy"
      fill_in 'post[code]', with: "destroy"

      click_on "Save"

      expect(User.last.posts.last.code).to eq("destroy")
    end

  end
  
end