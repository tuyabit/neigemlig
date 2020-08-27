class AddColumnToUsershopunejah < ActiveRecord::Migration[5.2]
  def change
    add_column :usershopunejahs, :uname, :text
    add_column :usershopunejahs, :from, :text
    add_column :usershopunejahs, :name1, :text
    add_column:usershopunejahs, :une1, :float
    add_column:usershopunejahs, :une2, :float
    add_column:usershopunejahs, :une3, :decimal, precision: 10, scale: 3
    add_column :usershopunejahs, :unit1, :string
    add_column :usershopunejahs, :unit2, :string
    add_column :usershopunejahs, :jah1, :float
    add_column :usershopunejahs, :bay1, :float
    add_column :usershopunejahs, :ujdt, :datetime
    add_column :usershopunejahs, :get1dt, :datetime
    add_column :usershopunejahs, :dune, :datetime
    add_column :usershopunejahs, :get2dt, :datetime

  end
end
