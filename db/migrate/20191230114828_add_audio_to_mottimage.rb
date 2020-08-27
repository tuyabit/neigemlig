class AddAudioToMottimage < ActiveRecord::Migration[5.2]
  def change
    add_column :mottimages, :audio, :string
  end
end
