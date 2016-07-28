class Category < ActiveRecord::Base
  validates :title, :description, :background_image, presence: true
  validates :slug, uniqueness: true
end
