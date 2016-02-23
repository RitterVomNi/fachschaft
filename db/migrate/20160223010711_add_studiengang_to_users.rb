class AddStudiengangToUsers < ActiveRecord::Migration
  def change
    add_column :users, :studiengang, :string
  end
end
