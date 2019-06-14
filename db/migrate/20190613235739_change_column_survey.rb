class ChangeColumnSurvey < ActiveRecord::Migration[5.0]
  def change
    change_column :surveys, :a7, 'integer USING CAST(a7 AS integer)'
  
  end
end
