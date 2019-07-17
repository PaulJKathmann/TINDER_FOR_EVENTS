class ChangeUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :age, 21
    change_column_default :users, :name, "Mr. Tester"
    change_column_default :users, :bio, " "
    change_column_default :users, :age, 21
    change_column_default :users, :gender, "N/A"
    change_column_default :users, :preferred_match_type, "Friends"
    change_column_default :users, :upper_age_preference, 18
    change_column_default :users, :lower_age_preference, 60
  end
end
