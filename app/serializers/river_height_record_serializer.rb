class RiverHeightRecordSerializer < ActiveModel::Serializer
  attributes :id, :record_time, :description, :feet_above, :prediction
  
  has_one :city
  has_one :river
  # def city
  #   c = object.city
  #   {mm_name: c.mm_name, en_name: c.en_name}.to_json
  # end

  # def river
  #   r = object.river
  #   {mm_name: r.mm_name, en_name: r.en_name}.to_json
  # end
end
