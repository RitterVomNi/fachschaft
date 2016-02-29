class Content < ActiveRecord::Base
  mount_uploader :image, ContentImageUploader
  belongs_to :user
  has_many :links

  #mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :title, :content, :image, presence: true # Make sure the title is present.

end