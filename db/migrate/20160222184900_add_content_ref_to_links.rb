class AddContentRefToLinks < ActiveRecord::Migration
  def change
    add_reference :links, :content, index: true, foreign_key: true
  end
end
