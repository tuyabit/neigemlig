class CreateMlqdbcheers < ActiveRecord::Migration[5.2]
  def change
    create_table :mlqdbcheers do |t|
      t.text :text1
      t.references :mlqdb, foreign_key: true

      t.timestamps
    end
  end
end
