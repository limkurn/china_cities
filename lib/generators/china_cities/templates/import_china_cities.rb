require 'yajl'
class ImportChinaCities < ActiveRecord::Migration
  def self.up
    ChinaCity.delete_all
    file = File.new("#{ChinaCities::Engine.root.to_s}/db/cities.json", 'r')
    parser = Yajl::Parser.new
    db = parser.parse(file)
    db.each do |province_node|
      cities_nodes = province_node['cities']
      options = province_node.delete_if {|k,v|k == 'cities'}
      province = ChinaCity.create! options
      if cities_nodes
        cities_nodes.each do |city_node|
          district_nodes = city_node['cities']
          options = city_node.delete_if {|k,v|k == 'cities'}
          city = ChinaCity.create! options.merge!({'parent_id' => province.id })
          if district_nodes
            district_nodes.each do |district_node|
              options = district_node.delete_if {|k,v|k == 'cities'}
              district = ChinaCity.create! options.merge!({'parent_id' => city.id})
            end
          end
        end
      end
    end
  end

  def self.down
    ChinaCity.delete_all
  end
end
