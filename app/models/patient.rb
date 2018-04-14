class Patient < ApplicationRecord
	belongs_to :ward
	mount_uploader :avatar, AvatarUploader

	def full_name
		first_name + " " + last_name
	end
end
