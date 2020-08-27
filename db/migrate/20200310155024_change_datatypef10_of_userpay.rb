class ChangeDatatypef10OfUserpay < ActiveRecord::Migration[5.2]
  def change
    change_column :userpays, :f10, :text
  end
end
