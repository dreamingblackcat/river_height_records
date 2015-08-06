class CitySerializer < ActiveModel::Serializer
  attributes :id, :mm_name, :en_name, :latitude, :longitude
end
