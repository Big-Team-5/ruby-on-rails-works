class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :nom
      t.string :prenom
      t.string :title

      t.timestamps
    end
  end
end
