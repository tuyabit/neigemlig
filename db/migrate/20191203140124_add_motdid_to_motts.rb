class AddMotdidToMotts < ActiveRecord::Migration[5.2]
  def change
    add_column :motts, :Motdid, :integer
    add_column :motts, :Userid, :integer
  end
end
