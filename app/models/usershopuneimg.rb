class Usershopuneimg < ApplicationRecord
  belongs_to :usershopune

  mount_uploader :picture, ImageUploader
end
