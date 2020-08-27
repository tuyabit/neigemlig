class AddColumnToUsermdegdel < ActiveRecord::Migration[5.2]
  def change
    add_column :usermdegdels, :ga1, :text
    add_column :usermdegdels, :ga2, :text
    add_column :usermdegdels, :f4, :datetime
    add_column :usermdegdels, :f5, :datetime
    add_column :usermdegdels, :f6, :datetime
    add_column :usermdegdels, :f7, :datetime
  end
end
