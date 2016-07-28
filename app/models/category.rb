class Category < ActiveRecord::Base
  validates :title, :description, :background_image, presence: true
  validates :slug, uniqueness: true

  has_and_belongs_to_many :place_collections
end
