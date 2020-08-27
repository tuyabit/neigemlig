class Mottimage < ApplicationRecord
  belongs_to :mott

  has_many :mottimagetxts, dependent: :destroy
  has_many :mottpictxts, dependent: :destroy
  has_many :mottvidtxts, dependent: :destroy

  mount_uploader :picture, ImageUploader
  mount_uploader :video, VideoUploader
  mount_uploader :audio, AudioFileUploader
end
