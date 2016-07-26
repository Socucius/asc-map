ActiveAdmin.register PlaceCollection do
  permit_params :title, place_ids: []

  form do |f|
    inputs do
      input :title
      input :places, as: :check_boxes, collection: Place.all.map { |place| [place.title, place.id] }
    end
    actions
  end

  show do
    attributes_table do
      row :title
      ul do
        resource.places.each do |place|
          li link_to place.title, admin_place_path(place)
        end
      end
    end
  end
end
