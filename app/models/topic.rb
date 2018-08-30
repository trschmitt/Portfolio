class Topic < ApplicationRecord
  #Data Validation
  validates_presence_of :title

  #Blogs Relationship
  has_many :blogs
end
