class AddColumnToMott < ActiveRecord::Migration[5.2]
  def change
    add_column :motts, :moa, :text
    add_column :motts, :mob, :text
  end
end
