class Userjobpj < ApplicationRecord
  belongs_to :userjob

  has_many :userjobpjhuns, dependent: :destroy

  validates :name, presence: true
  validates :startdate, presence: true
  validates :enddate, presence: true
  validates :une, presence: true
  validates :unit, presence: true

end
