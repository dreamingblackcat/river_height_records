class RiverHeightRecordSerializer < ActiveModel::Serializer
  attributes :id, :city_id, :river_id, :record_time, :description, :feet_above, :prediction
end
