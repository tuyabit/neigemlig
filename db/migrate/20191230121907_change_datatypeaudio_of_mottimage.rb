class ChangeDatatypeaudioOfMottimage < ActiveRecord::Migration[5.2]
  def change
    change_column :mottimages, :audio, :binary
  end
end
