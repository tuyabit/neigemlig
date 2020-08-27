class AddColumnToUserjuud < ActiveRecord::Migration[5.2]
  def change
    add_column :userjuuds, :rotate, :string
    add_column :userjuuds, :yuu, :string
  end
end
