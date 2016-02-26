class Content < ActiveRecord::Base
  belongs_to :user
  has_many :links

  #mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :titel, :content, presence: true # Make sure the title is present.

end
