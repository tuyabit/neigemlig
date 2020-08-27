class Rmailtext < ApplicationRecord
  belongs_to :rmail

  validates :tt, presence: true
end
