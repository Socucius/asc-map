class CreatePlaceCollections < ActiveRecord::Migration
  def change
    create_table :place_collections do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
