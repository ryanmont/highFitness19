class AddPrizeReferenceToPicks < ActiveRecord::Migration[5.0]
  def change
    add_reference :picks, :prize, foreign_key: true
  end
end
