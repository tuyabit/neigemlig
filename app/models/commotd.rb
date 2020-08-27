class Commotd < ApplicationRecord
  belongs_to :motd
  validates :td,presence: true
end
