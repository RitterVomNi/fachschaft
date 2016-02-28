require 'rails_helper'

RSpec.describe Content, type: :model do
  let(:content) { FactoryGirl.create(:content) }

  it 'has a valid factory' do
    expect(content).to be_valid
  end

  it 'is invalid without a title' do
    expect(FactoryGirl.build(:content, title: nil)).not_to be_valid
  end

  it 'is invalid without a content' do
    expect(FactoryGirl.build(:content, content: nil)).not_to be_valid
  end
end