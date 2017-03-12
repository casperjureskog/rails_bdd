require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :comment }
  end

  describe 'associations' do
    it { is_expected.to belong_to :article }
  end


  describe 'comment Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:comment)).to be_valid
    end
  end
end