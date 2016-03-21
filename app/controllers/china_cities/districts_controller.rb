module ChinaCities
  class DistrictsController < ApplicationController
    respond_to :html, :json

    def json_file
      send_file "#{ChinaCities::Engine.root.to_s}/db/cities.json"
    end

    def by_name
      city = ChinaCity.where(name:  params[:name]).first
      cities = ChinaCity.where(parent_id: city.id).map{|city|[city.name, city.name]}
      render json: cities.to_json, layout: nil
    end

    def by_id
      city = ChinaCity.find params[:id]
      cities = ChinaCity.where(parent_id: city.id).map{|city|[city.name, city.id]}
      render json: cities.to_json, layout: nil
    end

    def by_code
      city = ChinaCity.where(code: params[:code]).first
      cities = ChinaCity.where(parent_id: city.id).map{|city|[city.name, city.code]}
      render json: cities.to_json, layout: nil
    end
  end
end
