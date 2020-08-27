class Malcount < ApplicationRecord
  belongs_to :usermal

  has_many :malhens, dependent: :destroy

  validates :name1, presence: true
  validates :count, presence: true
  
end
