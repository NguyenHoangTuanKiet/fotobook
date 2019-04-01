class Photo < ApplicationRecord

  mount_uploader :attachment, PhotoUploader

  belongs_to :imageable, polymorphic: true

end
