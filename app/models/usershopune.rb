class Usershopune < ApplicationRecord
  belongs_to :usershop

  has_many :usershopunejahs, dependent: :destroy
  has_many :usershopuneimgs, dependent: :destroy

  validates :name, presence: true, length:{minimum: 2, message: 'ᠵᠥᠪ ᠠᠭᠤᠯᠭ᠎ᠠ ᠨᠡᠮᠡᠭᠡᠷᠠᠢ᠃'}
  validates :une1, presence: true
  validates :bay1, presence: true
  validates :unit1, presence: true
  validates :une2, presence: true
  validates :unit2, presence: true
end
