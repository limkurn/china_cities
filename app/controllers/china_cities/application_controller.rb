module ChinaCities
  class ApplicationController < ActionController::Base
    before_filter :set_locale

    def set_locale
      if params[:locale]
        I18n.locale = params[:locale]
      end
    end
  end
end
