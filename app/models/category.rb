class Category < ActiveRecord::Base
  validates :title, :description, :slug, presence: true
  validates :slug, uniqueness: true

  has_and_belongs_to_many :place_collections

  def places
    place_collections.map(&:places)
  end
end
