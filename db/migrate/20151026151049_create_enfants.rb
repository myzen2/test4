class CreateEnfants < ActiveRecord::Migration
  def change
    create_table :enfants do |t|
      t.string :nom
      t.string :prenom
      t.date :date_de_naissance

      t.timestamps null: false
    end
  end
end
