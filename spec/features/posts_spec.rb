require 'rails_helper'

describe 'navigate' do
  before do
    @category = create(:category)
    @user = create(:user)
    @user2 = create(:user)
    login_as(@user, :scope => :user)
    @post = create(:post)
    @post2 = create(:second_post)
  end

  feature 'index' do
  
    it 'can be reached successfully' do
      visit posts_path(@post)
      expect(page.status_code).to eq(200)
    end

    it 'has a title of Posts description' do
      visit post_path(post)
      expect(page).to have_content(/How to install rspec/)
    end

    it 'can reach show page of each category link' do
      pending("fragile - currently broken")

      visit root_path
      click_link('Heroku')

      expect(current_path).to eq("/posts/category/Heroku")
    end
  end
  
  feature 'navbar' do

    it "new_post_path can be reached from menu in nav" do
      visit root_path
      click_link('test-id')

      expect(current_path).to eq("/posts/new")
    end
  end 

  feature 'User posts' do
    it 'can not be edited by other users' do
      logout(@user, :scope => :user)
      login_as(@user2, :scope => :user)

      visit "/posts/300/edit"

      expect(current_path).to eq(root_path)
      expect(page).to have_content(/You are not authorized to perform this action./)
    end
  end

  feature 'search bar' do

    it "can search post description with partial words" do

      post = create(:post, description: "How to update gem file")
      visit root_path
      fill_in :search, with: "ge"
      click_button('Find my code')

      expect(page).to have_content(/How to update gem file/)
    end

    it "redirects to home page if search field is blank when search button clicked" do
      visit root_path
      click_button('Find my code')

      expect(page).to have_content(/Empty field!/)
    end
  end

  feature 'creation' do

    before do
      visit new_post_path
    end

    it 'has a new form that can be reached' do
      expect(page.status_code).to eq(200)
    end

    it 'of post can be saved from new form' do

      fill_in 'post[description]', with: "How to install ruby gem."
      fill_in 'post[code]', with: "bundle install"
      select('Rails', :from => 'post[category_id]')

      click_on "Save"

      expect(page).to have_content("How to install ruby gem.")
    end

    it "will have a user associated with the post" do

      fill_in('Description', :with => "How to install ruby gem.")
      fill_in('Code', :with => "update")
      select(@category.name, from: 'post[category_id]')
      click_on "Save"

      expect(@user.posts.last.code).to eq("update")
    end
  end
end




