class Project < ApplicationRecord

  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :angular_js_projects, -> {where(subtitle: 'Angular.js')}
  scope :ruby_on_rails_projects, -> {where(subtitle: 'Ruby on Rails')}
end
