class Blog < ApplicationRecord
  # set status to Draft or Published so that you haver two different statuses to show only published blogs
  enum status: { draft: 0, published: 1}

  # Integration of Friendly_ID
  extend FriendlyId
  friendly_id :title, use: :slugged

  #Data Validation
  validates_presence_of :title, :body

  #Topics Relationship
  belongs_to :topic

end
