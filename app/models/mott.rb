class Mott < ApplicationRecord

  mount_uploader :f10, ImageUploader
  # has_many :comments, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :mottimages, dependent: :destroy
  has_many :payunits, dependent: :destroy

  belongs_to :motd
  validates :f1, presence: true, length:{minimum: 2, message: 'ᠵᠥᠪ ᠠᠭᠤᠯᠭ᠎ᠠ ᠨᠡᠮᠡᠭᠡᠷᠠᠢ᠃'}

end
