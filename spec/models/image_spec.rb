require 'rails_helper'

RSpec.describe Image, type: :model do
  context 'validations' do
    it { should belong_to(:imageable) }
  end
end
