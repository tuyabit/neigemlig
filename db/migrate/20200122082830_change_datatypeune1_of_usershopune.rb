class ChangeDatatypeune1OfUsershopune < ActiveRecord::Migration[5.2]
  def change
    change_column :usershopunes, :une3, :decimal, precision: 10, scale: 3
    change_column :usershopunes, :une1, :float
    change_column :usershopunes, :dune, :datetime
  end
end
