require 'rails_helper'
require 'devise'

RSpec.feature 'Create  Content',
              'As a "user",
              I want to create a Content' do
    let(:user) { FactoryGirl.create(:user) }
  before do
    user.set_role("Fachschaft")
    user.save
end
  context 'at index page' do
     scenario 'create content with title and content' do

     #sign_in
      visit new_user_session_path
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: user.password
      click_button 'Einloggen'
      #create_content
      visit new_content_path
      expect(current_path).to eq("/contents/new")
      fill_in 'content[title]', with: "title"
      fill_in 'content_content', with: "test_content"
      click_button 'Content erstellen'
      expect(page).to have_content("test_content")
    end
  end
end