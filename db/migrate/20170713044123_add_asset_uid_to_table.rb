class AddAssetUidToTable < ActiveRecord::Migration[5.0]
  def change
    add_column :tables, :asset_uid, :string
  end
end
