class ChangeSwiper < ActiveRecord::Migration[5.2]
  def change
    remove_reference :swipes, :participant_1, index: true
    remove_reference :swipes, :participant_2, index: true

    add_reference :swipes, :participant_1, foreign_key: { to_table: :participants }
    add_reference :swipes, :participant_2, foreign_key: { to_table: :participants }
  end
end
