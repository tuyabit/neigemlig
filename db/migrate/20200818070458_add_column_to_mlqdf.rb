class AddColumnToMlqdf < ActiveRecord::Migration[5.2]
  def change
    add_column :mlqdfs, :a5, :text
  end
end
