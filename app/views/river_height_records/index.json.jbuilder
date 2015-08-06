json.array!(@river_height_records) do |river_height_record|
  json.extract! river_height_record, :id, :city_id, :river_id, :record_time, :description, :feet_above, :prediction
  json.url river_height_record_url(river_height_record, format: :json)
end
