class CreateControls < ActiveRecord::Migration[5.2]
  def change
    create_table :controls do |t|
      t.string :freak
      t.string :love

      t.timestamps
    end
  end
end
