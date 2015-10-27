class AddTelephoneToParents < ActiveRecord::Migration
  def change
    add_column :parents, :telephone, :string
  end
end
