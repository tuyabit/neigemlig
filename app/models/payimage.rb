class Payimage < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, ImageUploader
end
