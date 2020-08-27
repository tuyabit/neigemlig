class ChangeDatatypefnameOfUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :fname, :string
  end
end
