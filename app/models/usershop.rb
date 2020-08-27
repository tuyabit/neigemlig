class Usershop < ApplicationRecord
  belongs_to :user
  has_many :usershopimgs, dependent: :destroy
  has_many :usershopunes, dependent: :destroy

  validates :name2, presence: true
  validates :name1, presence: true

end
