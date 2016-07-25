require 'rails_helper'

RSpec.describe Place, type: :model do
  context 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:latitude) }
    it { should validate_presence_of(:longitude) }
    it { should have_many(:images).dependent(:destroy) }
    it { should accept_nested_attributes_for(:images) }
  end
end
