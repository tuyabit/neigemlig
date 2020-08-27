class AddVideoToMottimage < ActiveRecord::Migration[5.2]
  def change
    add_column :mottimages, :video, :binary
  end
end
