ActiveAdmin.register Place do
permit_params :title, :desription, :latitude, :longitude
form partial: 'form'
end
