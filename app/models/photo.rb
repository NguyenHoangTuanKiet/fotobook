class Photo < ApplicationRecord

  mount_uploader :attachment, PhotoUploader

  validates :title, :description, :attachment, presence: true
  validates :title, length: { maximum: 140 }
  validates :description, length: { maximum: 300 }

  belongs_to :imageable, polymorphic: true


end
