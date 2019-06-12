class CreateChoreoRegs < ActiveRecord::Migration[5.0]
  def change
    create_table :choreo_regs do |t|
      t.string :song
      t.string :names
      t.string :email
      t.string :phone
      t.string :other

      t.timestamps
    end
  end
end
