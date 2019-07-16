class AddDetailsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :end_date, :date
    add_column :events, :primary_color, :string
    add_column :events, :secondary, :string
    add_column :events, :logo, :string
    add_reference :events, :user, foreign_key: true
    add_column :events, :background_image, :string
    add_column :events, :welcome_message, :text
  end
end
