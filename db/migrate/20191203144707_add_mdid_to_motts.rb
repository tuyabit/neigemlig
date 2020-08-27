class AddMdidToMotts < ActiveRecord::Migration[5.2]
  def change
    add_column :motts, :Mdid, :integer
    add_reference :motts, :motd, foreign_key: true
  end
end
