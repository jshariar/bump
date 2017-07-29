class AddUsernameToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string #Adds a column in the table "users" called "username" with the type: string
    add_index :users, :username, unique: true # Makes sure the usernames are unique
    
  end
end
