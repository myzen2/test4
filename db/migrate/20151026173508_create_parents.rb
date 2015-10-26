class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :nom
      t.string :prenom
      t.string :adresse
      t.date :date_de_naissance

      t.timestamps null: false
    end
  end
end
