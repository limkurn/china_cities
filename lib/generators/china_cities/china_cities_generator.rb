require 'rails/generators/active_record'

class ChinaCitiesGenerator < Rails::Generators::NamedBase

  include Rails::Generators::Migration

  source_root File.expand_path('../templates', __FILE__)

  def generate_model
    copy_file 'china_city.rb', "app/models/china_city.rb"
  end

  def generate_migration
    migration_template 'create_china_cities.rb', "db/migrate/create_sharp_cities.rb"
    migration_template 'import_china_cities.rb', "db/migrate/import_china_cities.rb"
  end

  def self.next_migration_number(path)
    unless @prev_migration_nr
      @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
    else
      @prev_migration_nr += 1
    end
    @prev_migration_nr.to_s
  end
end
