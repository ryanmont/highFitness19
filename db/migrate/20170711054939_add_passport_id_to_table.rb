class AddPassportIdToTable < ActiveRecord::Migration[5.0]
  def change
    add_column :tables, :passport_id, :string
   
  end
end
