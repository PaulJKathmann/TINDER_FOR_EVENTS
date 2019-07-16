class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :match
      t.references :author, index: true, foreign_key: { to_table: :participants }
      t.boolean :read

      t.timestamps
    end
  end
end
