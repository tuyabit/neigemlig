class Remailtext < ApplicationRecord
  belongs_to :mail

  validates :a1, presence: true
  validates :a2, presence: true
  validates :f1, presence: true
  validates :f2, presence: true

end
