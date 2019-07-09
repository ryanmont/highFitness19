class CreateGurus < ActiveRecord::Migration[5.0]
  def change
    create_table :gurus do |t|
      t.string :a1
      t.string :a2
      t.string :a3
      t.string :a4
      t.string :a5
      t.string :a6
      t.string :a7
      t.string :a8
      t.string :a9

      t.timestamps
    end
  end
end
