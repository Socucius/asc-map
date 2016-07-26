require 'rails_helper'

RSpec.describe PlaceCollection, type: :model do
  context 'validations' do
    it { should have_and_belong_to_many(:places) }
    it { should validate_presence_of(:title) }
  end
end
