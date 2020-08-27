class Userget < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :yuu, presence: true

end
