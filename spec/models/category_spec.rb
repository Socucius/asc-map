require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:slug) }
    it { should validate_presence_of(:description) }
    it { should validate_uniqueness_of(:slug) }
    it { should have_and_belong_to_many(:place_collections) }
  end
end
