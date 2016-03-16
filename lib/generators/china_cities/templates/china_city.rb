class ChinaCity < ActiveRecord::Base

  class << self
    def provinces
      ChinaCity.where(level: 1)
    end

  end
end
