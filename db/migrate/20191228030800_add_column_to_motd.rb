class AddColumnToMotd < ActiveRecord::Migration[5.2]
  def change
    add_column :motds, :fname, :text
    add_column :motds, :funame, :text
    add_column :motds, :mda, :text
    add_column :motds, :mdb, :text
  end
end
