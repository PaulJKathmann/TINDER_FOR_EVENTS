class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :secondary, :secondary_color
  end
end
