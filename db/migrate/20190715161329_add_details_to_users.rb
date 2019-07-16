class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :bio, :string
    add_column :users, :age, :integer, null: false
    add_column :users, :gender, :string, null: false
    add_column :users, :preferred_gender, :string, null: false, default: "all"
    add_column :users, :preferred_match_type, :string, null: false
    add_column :users, :role, :string, null: false, default: "user"
    add_column :users, :upper_age_preference, :integer, null: false
    add_column :users, :lower_age_preference, :integer, null: false
  end
end
