ActiveAdmin.register Place do
  permit_params :title, :description, :latitude, :longitude
  form partial: 'form'

  index do
    column :title
    column :created_at
    actions
  end
end
