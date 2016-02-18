class CreateUsrs < ActiveRecord::Migration
  def change
    create_table :usrs do |t|
      t.string :firstName
      t.string :lastName
      t.string :facebook

      t.timestamps null: false
    end
  end
end
