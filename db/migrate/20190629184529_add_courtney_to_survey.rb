class AddCourtneyToSurvey < ActiveRecord::Migration[5.0]
  def change
    add_column :surveys, :a54, :integer
    add_column :surveys, :a55, :integer
    add_column :surveys, :a56, :string
  end
end
