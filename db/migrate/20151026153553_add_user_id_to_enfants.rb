class AddUserIdToEnfants < ActiveRecord::Migration
  def change
    add_column :enfants, :user_id, :integer
    add_index :enfants, :user_id
  end
end
