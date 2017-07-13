class Table < ApplicationRecord

  validates_presence_of :company, :first_name, :middle_name, :last_name, :passport_id, :date_of_birth, :street_address, :city, :state, :zip_code, :mobile_phone, :email

    # dragonfly_accessor :image 


    def self.to_csv(options = {})
        CSV.generate(options) do |csv|
          csv << column_names
          all.each do |table|
            csv << table.attributes.values_at(*column_names)
      end
    end
  end
end
