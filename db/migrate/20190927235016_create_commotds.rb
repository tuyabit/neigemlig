class CreateCommotds < ActiveRecord::Migration[5.2]
  def change
    create_table :commotds do |t|
      t.text :td
      t.references :motd, foreign_key: true

      t.timestamps
    end
  end
end
