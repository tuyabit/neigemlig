class Rmail < ApplicationRecord
  belongs_to :mail
  has_many :rmailtexts, dependent: :destroy

  validates :aa1, presence: true
  validates :aa2, presence: true
  validates :ff1, presence: true
  validates :ff2, presence: true

end
