class Project < ApplicationRecord

  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :angular_js_projects, -> {where(subtitle: 'Angular.js')}
  scope :ruby_on_rails_projects, -> {where(subtitle: 'Ruby on Rails')}

  after_initialize :set_defaults

  def set_defaults
    # If images are empty set to default. If there is an image there already it won't overwrite it. If nil set if not nil skip. key is the double pipes ||
    self.main_image ||= "https://via.placeholder.com/600x400"
    self.thumb_image ||= "https://via.placeholder.com/350x200"
  end

end
