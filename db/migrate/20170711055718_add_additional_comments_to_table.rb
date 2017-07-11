class AddAdditionalCommentsToTable < ActiveRecord::Migration[5.0]
  def change
    add_column :tables, :additional_comments, :text
  end
end
