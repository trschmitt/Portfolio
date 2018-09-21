module DefaultPageContent

  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Portfolio | Tristan Schmitt's Website"
    @seo_keywords = "Tristan Schmitt's Portfolio"
  end

end
