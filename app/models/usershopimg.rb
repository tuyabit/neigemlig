class Usershopimg < ApplicationRecord
  belongs_to :usershop
  mount_uploader :picture, ImageUploader
end
