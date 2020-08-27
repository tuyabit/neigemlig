class Userpay < ApplicationRecord
  belongs_to :user

  mount_uploader :picture, ImageUploader

  validates :unit, presence: true

end
