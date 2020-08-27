class Usermal < ApplicationRecord
  belongs_to :user

  has_many :malcounts, dependent: :destroy
  
  validates :name1, presence: true

end
