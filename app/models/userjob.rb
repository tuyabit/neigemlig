class Userjob < ApplicationRecord
  belongs_to :user

  mount_uploader :picture, ImageUploader

  has_many :userjobpjs, dependent: :destroy

  validates :name, presence: true
  validates :from, presence: true
  validates :f4, presence: true
  validates :unit, presence: true
  validates :f9, presence: true
  validates :ff9, presence: true

end
