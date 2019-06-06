class CreateQas < ActiveRecord::Migration[5.0]
  def change
    create_table :qas do |t|
      t.string :question
      t.string :name
      t.string :email
      t.string :other

      t.timestamps
    end
  end
end
