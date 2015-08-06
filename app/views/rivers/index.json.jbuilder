json.array!(@rivers) do |river|
  json.extract! river, :id, :mm_name, :en_name
  json.url river_url(river, format: :json)
end
