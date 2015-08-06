class RiverHeightRecord < ActiveRecord::Base

  belongs_to :city
  belongs_to :river

  mmunicode_convert :description, :prediction
end
