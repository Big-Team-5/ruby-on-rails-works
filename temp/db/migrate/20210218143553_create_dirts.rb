class CreateDirts < ActiveRecord::Migration[5.2]
  def change
    create_table :dirts do |t|
      t.string :game

      t.timestamps
    end
  end
end
