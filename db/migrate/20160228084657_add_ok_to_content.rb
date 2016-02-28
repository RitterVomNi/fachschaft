class AddOkToContent < ActiveRecord::Migration
  def change
    add_column :contents, :ok_manager, :boolean
    add_column :contents, :ok_admin, :boolean
  end
end
