class Team < ActiveRecord::Base
  belongs_to :resource, :polymorphic => true
  has_many :users
end
