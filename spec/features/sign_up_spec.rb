require 'rails_helper'
require 'devise'

RSpec.feature 'Sign up',
              'As a "user",
              I want to sign up' do

  context 'at index page' do
    scenario 'navigate to sign_up page' do
      visit root_path
      click_link 'Registrieren'
      expect(page).to have_selector("input[type=submit][value='Registrieren']")
      expect(current_path).to eq("/users/sign_up")
    end
    scenario 'sign up with email, password, firstName, lastName' do
      visit new_user_registration_path
      fill_in 'user_email', with: "sign_up_test@fh-muenster.de"
      fill_in 'user_password', with: "12345678"
      fill_in 'user_password_confirmation', with: "12345678"
      fill_in 'user_firstName', with: "test_firstName"
      fill_in 'user_lastName', with: "test_lastName"
      click_button 'Registrieren'
      expect(page).to have_content("Abmelden")
    end
  end
end