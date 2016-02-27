class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :content
      t.string :title

      t.timestamps null: false
    end
  end
end
