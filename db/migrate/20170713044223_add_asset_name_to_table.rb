class AddAssetNameToTable < ActiveRecord::Migration[5.0]
  def change
    add_column :tables, :asset_name, :string
  end
end
