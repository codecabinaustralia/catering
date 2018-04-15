class Patient < ApplicationRecord
	belongs_to :ward
	mount_uploader :avatar, AvatarUploader

	def full_name
		first_name + " " + last_name
	end

	def self.csv(options = {})
		CSV.generate(options) do |csv|
			csv << column_names
			all.each do |patient|
				csv << patient.attributes.values_at(*column_names)
			end
		end
	end

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Patient.create! row.to_hash
		end
	end

end
