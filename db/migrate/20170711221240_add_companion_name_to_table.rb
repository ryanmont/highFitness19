class AddCompanionNameToTable < ActiveRecord::Migration[5.0]
  def change
    add_column :tables, :companion, :string
  end
end
