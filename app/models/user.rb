class User < ApplicationRecord

  mount_uploader :image, ImageUploader

  has_many :mlqdas, dependent: :destroy
  has_many :mlqdbs, dependent: :destroy
  has_many :mlqdcs, dependent: :destroy
  has_many :mlqdds, dependent: :destroy
  has_many :mlqdes, dependent: :destroy
  has_many :mlqdfs, dependent: :destroy
  has_many :userimages, dependent: :destroy
  has_many :payimages, dependent: :destroy
  has_many :userangaars, dependent: :destroy
  has_many :usershops, dependent: :destroy
  has_many :userpays, dependent: :destroy
  has_many :useradds, dependent: :destroy
  has_many :usermals, dependent: :destroy
  has_many :userjobs, dependent: :destroy
  has_many :userjuuds, dependent: :destroy
  has_many :userjuudjdls, dependent: :destroy
  has_many :usergers, dependent: :destroy
  has_many :usergets, dependent: :destroy
  has_many :usermdegdels, dependent: :destroy

  before_save { self.email.downcase! }

  validates :nickname, presence: { message: 'ᠠᠭᠤᠯᠭ᠎ᠠ ᠨᠡᠮᠡᠭᠡᠷᠠᠢ᠃' }, length: { maximum: 50, message: 'ᠬᠡᠲᠤᠷᠭᠡᠢ ᠤᠷᠲᠤ ᠪᠠᠢᠨ᠎ᠠ᠃' }
  validates :introduce, length: { maximum: 5000, message: 'ᠬᠡᠲᠤᠷᠭᠡᠢ ᠤᠷᠲᠤ ᠪᠠᠢᠨ᠎ᠠ᠃' }
  validates :address, length: { maximum: 500, message: 'ᠬᠡᠲᠤᠷᠭᠡᠢ ᠤᠷᠲᠤ ᠪᠠᠢᠨ᠎ᠠ᠃' }

  validates :email, presence: { message: 'ᠠᠭᠤᠯᠭ᠎ᠠ ᠨᠡᠮᠡᠭᠡᠷᠠᠢ᠃' }, length: { maximum: 255, message: 'ᠬᠡᠲᠤᠷᠭᠡᠢ ᠤᠷᠲᠤ ᠪᠠᠢᠨ᠎ᠠ᠃' },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }

  validates :age, numericality:{only_integer: true}

  has_secure_password

end
