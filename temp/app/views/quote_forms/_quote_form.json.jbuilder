json.extract! quote_form, :id, :FirstName, :LastName, :PhoneNumber, :Email, :Elevators, :Price_Per_Unit, :Sum_For_All_Units, :Installation_Fees, :Total_Price :created_at, :updated_at
json.url quote_form_url(quote_form, format: :json)
