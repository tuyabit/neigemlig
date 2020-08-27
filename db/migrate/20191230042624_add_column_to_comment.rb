class AddColumnToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :tta, :text
    add_column :comments, :ttb, :text
  end
end
