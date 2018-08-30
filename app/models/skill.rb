class Skill < ApplicationRecord

  include Placeholder

  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults

  def set_defaults
    # If images are empty set to default. If there is an image there already it won't overwrite it. If nil set if not nil skip. key is the double pipes ||
    self.badge ||= Placeholder.image_generator(height: '100', width: '100')
  end
end
