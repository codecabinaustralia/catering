class Site < ApplicationRecord
  belongs_to :user
  has_many :wards
end
