class River < ActiveRecord::Base

  has_many :river_height_records
  mmunicode_convert :mm_name

end
