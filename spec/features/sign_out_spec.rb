require 'rails_helper'
require 'spec_helper'
RSpec.feature 'Sign out',
                'As a "User"'do
  context 'at start page' do
    let(:user) { FactoryGirl.create(:user)}

    before do
      visit new_user_session_path
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: user.password
      click_button 'Einloggen'
    end

    scenario 'sign out' do
      click_link 'Abmelden'
      expect(page).to_not have_content("Abmelden")
      expect(page).to have_content("Einloggen")
    end
  end
end