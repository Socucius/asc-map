ActiveAdmin.register Place do
  permit_params :title, :description, :latitude, :longitude
  form partial: 'form'
end
