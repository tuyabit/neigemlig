class AddColumnToUserger < ActiveRecord::Migration[5.2]
  def change
    add_column :usergers, :userid, :integer
    add_column :usergers, :yamr, :string
  end
end
