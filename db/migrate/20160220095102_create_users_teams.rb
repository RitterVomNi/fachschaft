class CreateUsersTeams < ActiveRecord::Migration
  def change
    create_table :users_teams do |t|
      t.integer :User_id
      t.integer :Team_id
      t.integer :teamLeader

      t.timestamps null: false
    end
  end
end
