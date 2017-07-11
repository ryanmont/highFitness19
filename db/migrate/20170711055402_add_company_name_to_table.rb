class AddCompanyNameToTable < ActiveRecord::Migration[5.0]
  def change
    add_column :tables, :company, :string
  end
end
