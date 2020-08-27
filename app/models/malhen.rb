class Malhen < ApplicationRecord
  belongs_to :malcount

  validates :name1, presence: true
  validates :count, presence: true
end
