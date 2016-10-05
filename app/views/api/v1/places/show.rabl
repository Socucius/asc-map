object @place
attributes :id, :title, :description
child(:images, object_root: false) do
  attributes :file
end
