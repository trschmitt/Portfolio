class Project < ApplicationRecord
  has_many :technologies
  include Placeholder

  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :angular_js_projects, -> {where(subtitle: 'Angular.js')}
  scope :ruby_on_rails_projects, -> {where(subtitle: 'Ruby on Rails')}

  after_initialize :set_defaults

  def set_defaults
    # If images are empty set to default. If there is an image there already it won't overwrite it. If nil set if not nil skip. key is the double pipes ||
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end

end
