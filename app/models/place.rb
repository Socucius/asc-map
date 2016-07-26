class Place < ActiveRecord::Base
  has_many :images, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true
  has_and_belongs_to_many :place_collections

  validates :title, :description, :latitude, :longitude, presence: true
end
