class CreatePicks < ActiveRecord::Migration[5.0]
  def change
    create_table :picks do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
