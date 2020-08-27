class Motd < ApplicationRecord
  has_many :commotds, dependent: :destroy
  has_many :motts
  validates :f1, presence: true, length:{minimum: 2, message: 'ᠵᠥᠪ ᠠᠭᠤᠯᠭ᠎ᠠ ᠨᠡᠮᠡᠭᠡᠷᠠᠢ᠃'}
  # validates :f2, presence: true, length:{minimum: 5, message: 'ᠵᠥᠪ ᠠᠭᠤᠯᠭ᠎ᠠ ᠨᠡᠮᠡᠭᠡᠷᠠᠢ᠃'}
end
