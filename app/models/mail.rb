class Mail < ApplicationRecord
  has_many :mailtexts, dependent: :destroy
  has_many :rmails, dependent: :destroy
  has_many :remailtexts, dependent: :destroy

  validates :f1, presence: true, length:{minimum: 2, message: 'ᠵᠥᠪ ᠠᠭᠤᠯᠭ᠎ᠠ ᠨᠡᠮᠡᠭᠡᠷᠠᠢ᠃'}
  validates :f2, presence: true, length:{minimum: 5, message: 'ᠵᠥᠪ ᠠᠭᠤᠯᠭ᠎ᠠ ᠨᠡᠮᠡᠭᠡᠷᠠᠢ᠃'}
  validates :a1, presence: { message: 'ᠠᠭᠤᠯᠭ᠎ᠠ ᠨᠡᠮᠡᠭᠡᠷᠠᠢ᠃' }, length: { maximum: 255, message: 'ᠬᠡᠲᠤᠷᠭᠡᠢ ᠤᠷᠲᠤ ᠪᠠᠢᠨ᠎ᠠ᠃' },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
