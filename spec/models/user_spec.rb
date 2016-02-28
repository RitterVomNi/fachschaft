require 'rails_helper'

RSpec.describe User, type: :model do
   let(:user) { FactoryGirl.create(:user) }

  it 'has a valid factory' do
     expect(user).to be_valid
  end

   it 'is invalid without a firstName' do
     expect(FactoryGirl.build(:user, firstName: nil)).not_to be_valid
   end

   it 'is invalid without a lastName' do
     expect(FactoryGirl.build(:user, lastName: nil)).not_to be_valid
   end

   it 'is invalid with wrong facebook-link' do
     expect(FactoryGirl.build(:user, facebook: "Fwww.facebook.com/profil")).not_to be_valid
   end

   it 'is valid with valid facebook-link or none' do
     expect(FactoryGirl.build(:user, facebook: "www.facebook.com/profil")).to be_valid
     expect(FactoryGirl.build(:user, facebook: nil)).to be_valid
   end
end