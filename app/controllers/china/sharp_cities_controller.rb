require_dependency "china/application_controller"

module China
  class SharpCitiesController < ApplicationController
      respond_to :html, :json

      def ajax
        @cities = ChinaCity.where(parent_id: params[:id])
        respond_to do |format|
          format.js { render 'sharp_cities/ajax' }
        end
      end
  end
end
