class ChangeDatatypevideoOfMottimage < ActiveRecord::Migration[5.2]
  def change
    change_column :mottimages, :video, :string
  end
end
