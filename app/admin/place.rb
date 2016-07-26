ActiveAdmin.register Place do
  filter :title
  permit_params :title, :description, :latitude, :longitude, images_attributes: [:id, :file, :_destroy]

  index do
    column :title
    column :created_at
    actions
  end

  form do |f|
    inputs do
      f.input :title
      f.input :description, as: :text
    end
    div class: 'hint' do
      'You can click on the map to get this values, or set them manually'
    end
    inputs do
      f.input :latitude
      f.input :longitude
    end
    div id: 'map', 'data-lat': resource.latitude, 'data-lon': resource.longitude
    inputs do
      f.has_many :images, heading: 'Images', allow_destroy: true do |img|
        img.input :file, as: :file, hint: image_tag(img.object.file.thumb.url)
        img.input :file_cache, as: :hidden
      end
    end
    actions
  end

  show do
    attributes_table do
      row :title
      row :description
      div id: 'map', 'data-lat': resource.latitude, 'data-lon': resource.longitude
      resource.images.each do |img|
        div style: 'display: inline-block;' do
          image_tag(img.file.thumb.url)
        end
      end
    end
  end

end
