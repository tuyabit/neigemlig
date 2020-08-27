class Mailtext < ApplicationRecord
  belongs_to :mail

  validates :tt, presence: true
end
