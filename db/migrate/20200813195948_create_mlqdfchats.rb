class CreateMlqdfchats < ActiveRecord::Migration[5.2]
  def change
    create_table :mlqdfchats do |t|
      t.text :text1
      t.integer :from
      t.integer :to
      t.references :mlqdf, foreign_key: true

      t.timestamps
    end
  end
end
