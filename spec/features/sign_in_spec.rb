require 'rails_helper'
require 'devise'

RSpec.feature 'Sign in',
              'As a "user",
              I want to sign in' do
  let(:user) { FactoryGirl.create(:user) }

  context 'at index page' do
    scenario 'navigate to sign_in page' do
      visit root_path
      click_link 'Einloggen'
      expect(page).to have_selector("input[type=submit][value='Einloggen']")
      expect(current_path).to eq("/users/sign_in")
    end
    scenario 'sign in with email and password' do
      visit new_user_session_path
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: user.password
      click_button 'Einloggen'
      expect(page).to have_content("Abmelden")
    end
  end
end