class CreateJoinTablePlacePlaceCollection < ActiveRecord::Migration
  def change
    create_join_table :places, :place_collections do |t|
      t.index [:place_id, :place_collection_id], name: 'places_place_collections_index'
      t.index [:place_collection_id, :place_id], name: 'place_collections_places_index'
    end
  end
end
