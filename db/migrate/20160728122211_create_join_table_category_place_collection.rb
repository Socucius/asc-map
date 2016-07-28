class CreateJoinTableCategoryPlaceCollection < ActiveRecord::Migration
  def change
    create_join_table :categories, :place_collections do |t|
      t.index [:category_id, :place_collection_id], name: 'categories_place_collections_index'
      t.index [:place_collection_id, :category_id], name: 'categories_collections_places_index'
    end
  end
end
