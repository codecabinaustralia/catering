class Order < ApplicationRecord
  belongs_to :patient, required: false
  belongs_to :ward, required: false
  belongs_to :site, required: false
end
