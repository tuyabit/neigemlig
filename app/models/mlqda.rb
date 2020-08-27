class Mlqda < ApplicationRecord
  belongs_to :user

  validates :a1, presence: true
  validates :f1, presence: true
  validates :a2, presence: true
  # validates :f2, presence: true
  validates :a9, presence: true
  validates :f9, presence: true

end
