require_dependency "sharp_zones/application_controller"

module SharpZones
  class SharpCitiesController < ApplicationController
      respond_to :html, :json

      def index
        @cities = City.where(province_code: params[:province_code])
        respond_to do |format|
          format.js { render 'sharp_cities/index' }
        end
      end
  end
end
