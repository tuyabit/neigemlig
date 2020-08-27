class AddColumnToUsershopune < ActiveRecord::Migration[5.2]
  def change
    add_column :usershopunes, :unit1, :string
    add_column :usershopunes, :unit2, :string
    add_column :usershopunes, :jah1, :float
    add_column :usershopunes, :bay1, :float
    add_column :usershopunes, :from, :text
  end
end
