class ChangeColumnSurveyOthers < ActiveRecord::Migration[5.0]
  def change
    change_column :surveys, :a8, 'integer USING CAST(a8 AS integer)'
    change_column :surveys, :a9, 'integer USING CAST(a9 AS integer)'
    change_column :surveys, :a10, 'integer USING CAST(a10 AS integer)'
    change_column :surveys, :a11, 'integer USING CAST(a11 AS integer)'
    change_column :surveys, :a12, 'integer USING CAST(a12 AS integer)'
    change_column :surveys, :a13, 'integer USING CAST(a13 AS integer)'
    change_column :surveys, :a14, 'integer USING CAST(a14 AS integer)'
    change_column :surveys, :a15, 'integer USING CAST(a15 AS integer)'
    change_column :surveys, :a16, 'integer USING CAST(a16 AS integer)'
    change_column :surveys, :a17, 'integer USING CAST(a17 AS integer)'
    change_column :surveys, :a18, 'integer USING CAST(a18 AS integer)'
    change_column :surveys, :a19, 'integer USING CAST(a19 AS integer)'
    change_column :surveys, :a20, 'integer USING CAST(a20 AS integer)'
    change_column :surveys, :a21, 'integer USING CAST(a21 AS integer)'
    change_column :surveys, :a22, 'integer USING CAST(a22 AS integer)'

  end
end
