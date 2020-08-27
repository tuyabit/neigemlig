class Mlqdf < ApplicationRecord
  belongs_to :user

  has_many :mlqdfchats, dependent: :destroy

  validates :a1, presence: true

end
