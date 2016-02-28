class RemoveLeaderFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :leader, :string
  end
end
