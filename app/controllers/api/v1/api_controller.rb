module Api
  module V1
    class ApiController < ApplicationController
      protect_from_forgery with: :null_session
      respond_to :json

      # CUSTOM EXCEPTION HANDLING

      rescue_from StandardError do |e|
        catch_all_error(e)
      end

      protected

      def catch_all_error(e)
        #TODO removed stack traces when in production
        error_info = {
          :error => "internal-server-error",
          :exception => "#{e.class.name} : #{e.message}",
        }
        error_info[:trace] = e.backtrace[0,10] if Rails.env.development?
        render :json => error_info.to_json, :status => 500
      end
      
    end
  end
end

