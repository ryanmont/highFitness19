class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :tables do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :date_of_birth
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :mobile_phone
      t.string :email
      t.string :preferred_airline
      t.string :frequent_flyer_number
      t.string :preferred_flight_date
      t.string :preferred_departure_time_period
      t.string :preferred_departure_airport_code
      t.string :seat_preference
      t.string :food_allergies
      t.integer :number_of_beds_requested

      t.timestamps
    end
  end
end
