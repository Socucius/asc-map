class Place < ActiveRecord::Base
  validates :title, :description, presence: true
end
