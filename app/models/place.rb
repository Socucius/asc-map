class Place < ActiveRecord::Base
  validates :title, :description, :latitude, :longitude, presence: true


  has_many :images, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true
  has_and_belongs_to_many :place_collections
end
