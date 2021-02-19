class CreateQuoteForms < ActiveRecord::Migration[5.2]
  def change
    create_table :quote_forms do |t|
      t.string :FirstName
      t.string :LastName
      t.string :PhoneNumber
      t.string :Email
      t.string :Elevators
      t.string :Price_Per_Unit
      t.string :Sum_For_All_Units
      t.string :Installation_Fees
      t.string :Total_Price

      t.timestamps
    end
  end
end
