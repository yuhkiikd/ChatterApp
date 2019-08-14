class RenameTweetsToChatters < ActiveRecord::Migration[5.2]
  def change
    rename_table :tweets, :chatters
  end
end
