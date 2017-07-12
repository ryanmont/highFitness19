class AddMedicalConditionsToTable < ActiveRecord::Migration[5.0]
  def change
    add_column :tables, :medical, :string
  end
end
