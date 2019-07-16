class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :event_code
      t.date :start_date

      t.timestamps
    end
  end
end
