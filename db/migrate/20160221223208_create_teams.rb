class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :teamName
      t.string :leader

      t.timestamps null: false
    end
  end
end
