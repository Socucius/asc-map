ActiveAdmin.register Category do
  filter :title
  permit_params :title, :slug, :description, place_collection_ids: []


  form do |f|
    inputs do
      f.input :title
      f.input :slug, hint: 'This text will be used as a part of url'
      f.input :description, as: :text
      f.input :place_collections, as: :check_boxes, collection: PlaceCollection.all.map { |place_col| [place_col.title, place_col.id] }
    end
    actions
  end

  show do
    attributes_table do
      row :title
      row :description
      h4 'Associated place collections'
      ul do
        resource.place_collections.each do |place_col|
          li link_to place_col.title, admin_place_collection_path(place_col)
        end
      end
    end
  end

end
