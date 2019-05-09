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
end