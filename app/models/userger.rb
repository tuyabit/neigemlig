class Userger < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :faymly, presence: true

end
