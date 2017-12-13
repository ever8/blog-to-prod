class Photo < ApplicationRecord

  belongs_to :user
  belongs_to :category
  has_many :votes
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader

end
