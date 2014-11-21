json.array!(@locations) do |location|
  json.extract! location, :id, :name, :type, :width, :depth, :hight, :max_weight
  json.url location_url(location, format: :json)
end
