class Payunit < ApplicationRecord
  belongs_to :mott

  has_many :payunitjahs, dependent: :destroy

  # validates :f4, presence: true
  # validates :name, presence: true
  # validates :f6, presence: true
  # validates :f7, presence: true
  # validates :f4, :numericality => { :greater_than => -1 }

end
