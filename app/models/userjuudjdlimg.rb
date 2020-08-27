class Userjuudjdlimg < ApplicationRecord
  belongs_to :userjuudjdl

  mount_uploader :picture, ImageUploader
end
