class Pick < ApplicationRecord

belongs_to :pick, optional: true


  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      pick = find_by_id(row['id']) || new
      pick.attributes = row.to_hash
      pick.save!
    end
  end




end
