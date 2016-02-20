class Content < ActiveRecord::Base
  resourcify
  belongs_to :user
  has_many :links
end
