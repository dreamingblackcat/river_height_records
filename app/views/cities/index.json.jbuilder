json.array!(@cities) do |city|
  json.extract! city, :id, :mm_name, :en_name, :latitude, :longitude
  json.url city_url(city, format: :json)
end
