class CreateSwipes < ActiveRecord::Migration[5.2]
  def change
    create_table :swipes do |t|
      t.boolean :participant_1_liked
      t.boolean :participant_2_liked

      t.timestamps
    end

    add_reference :swipes, :participant_1, index: true
    add_foreign_key :swipes, :users, column: :participant_1_id
    add_reference :swipes, :participant_2, index: true
    add_foreign_key :swipes, :users, column: :participant_2_id
  end
end
