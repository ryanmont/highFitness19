class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.string :a1
      t.string :a2
      t.string :a3
      t.string :a4
      t.string :a5

      t.timestamps
    end
  end
end
