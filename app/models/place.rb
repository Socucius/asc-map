class Place < ActiveRecord::Base
  has_many :images, as: :imageable, dependent: :destroy
  
  validates :title, :description, :latitude, :longitude, presence: true
end
