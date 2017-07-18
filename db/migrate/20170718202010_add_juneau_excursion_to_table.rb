class AddJuneauExcursionToTable < ActiveRecord::Migration[5.0]
  def change
    add_column :tables, :juneau_excursion, :string
  end
end
