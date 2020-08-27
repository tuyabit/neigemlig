class AddColumnToUserpay < ActiveRecord::Migration[5.2]
  def change
    add_column :userpays, :userid, :integer
    add_column :userpays, :uname, :text
    add_column :userpays, :typeid, :integer
    add_column :userpays, :type, :text
  end
end
