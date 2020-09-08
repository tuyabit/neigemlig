class ChangeDatatypeaudioOfMottimage < ActiveRecord::Migration[5.2]
  def change
    change_column :mottimages, :audio, :string
  end
end
