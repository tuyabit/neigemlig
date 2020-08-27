class CreateMlqdbceers < ActiveRecord::Migration[5.2]
  def change
    create_table :mlqdbceers do |t|
      t.text :text1
      t.references :mlqdb, foreign_key: true

      t.timestamps
    end
  end
end
