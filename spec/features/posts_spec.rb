require 'rails_helper'


describe 'navigate' do
  before do
    @user = build(:user)
    @user2 = build(:user)
    @post = build(:post)
    @post2 = build(:second_post)
    login_as(@user, :scope => :user)
  end

  feature 'index' do

    it 'can be reached successfully' do
      visit posts_path
      expect(page.status_code).to eq(200)
    end

    it "has a title of 'How to install rspec' " do
      visit posts_path
      expect(page).to have_content(/How to install rspec/)
    end
  end 
  feature 'navbar' do

    it "new_post_path can be reached from menu in nav" do
      visit root_path
      click_on('Menu')
      click_on('New Post')

      expect(current_path).to eq("/posts/new")
    end
  end

  feature 'User posts' do
    it 'can not be edited by other users' do
      logout(@user, :scope => :user)
      login_as(@user2, :scope => :user)

      visit "/posts/5/edit"

      current_path.should == root_path
      expect(page).to have_content(/You are not authorized to perform this action./)
    end
  end
end


feature 'creation' do

  before do
    @user = build(:user)
    login_as(@user, :scope => :user)
    visit new_post_path
  end

  it 'has a new form that can be reached' do
    expect(page.status_code).to eq(200)
  end

  it 'can be created from new form' do

    fill_in 'post[description]', with: "How to install ruby gem."
    fill_in 'post[code]', with: "bundle install"
    select('Rails', :from => 'post[category]')

    click_on "Save"

    expect(page).to have_content("How to install ruby gem.")
  end

  it "will have a user associated with the post" do

    fill_in 'post[description]', with: "How to install ruby gem."
    fill_in 'post[code]', with: "update"
    select('Rails', :from => 'post[category]')
    click_on "Save"

    expect(@user.posts.last.code).to eq("update")
  end

end
