class Userjobpjhun < ApplicationRecord
  belongs_to :userjobpj

  has_many :userjobpjhunjahs, dependent: :destroy

  validates :hname, presence: true
  validates :hstartdate, presence: true
  validates :henddate, presence: true
  validates :hune, presence: true
  validates :hunit, presence: true

end
