class ImportChinaCity < ActiveRecord::Base
  def self.up

  end

  def self.down
    ChinaCity.delete_all
  end
end
