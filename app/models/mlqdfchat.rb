class Mlqdfchat < ApplicationRecord
  belongs_to :mlqdf

  validates :text1, presence: true

end
