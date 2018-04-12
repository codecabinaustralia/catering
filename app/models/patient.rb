class Patient < ApplicationRecord
	belongs_to :ward
	mount_uploader :avatar, AvatarUploader
end
