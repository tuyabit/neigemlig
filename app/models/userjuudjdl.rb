class Userjuudjdl < ApplicationRecord
  belongs_to :user

  has_many :userjuudjdlimgs, dependent: :destroy
end
