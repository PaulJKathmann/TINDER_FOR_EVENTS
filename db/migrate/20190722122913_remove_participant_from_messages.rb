class RemoveParticipantFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :author_id
    add_reference :messages, :author, index: true, foreign_key: { to_table: :users }
  end
end
