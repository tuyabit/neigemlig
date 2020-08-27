class CreateRmails < ActiveRecord::Migration[5.2]
  def change
    create_table :rmails do |t|
      t.text :aa1
      t.text :ff1
      t.text :ff2
      t.text :aa2
      t.integer :ff3
      t.datetime :ff6
      t.timestamp :ff7
      t.references :mail, foreign_key: true

      t.timestamps
    end
  end
end
