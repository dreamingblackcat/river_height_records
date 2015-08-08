module Api
  module V1
    class RiverHeightRecordsController < ApplicationController
      
      def index
        @river_high_records = RiverHeightRecord.all
                                .group_by {|rh| rh.record_time.to_date}
                                .map{|k,v| [k, v.map {|rc| RiverHeightRecordSerializer.new(rc, root: false)}]}
        render json: Hash[@river_high_records]
      end
    end    
  end
end