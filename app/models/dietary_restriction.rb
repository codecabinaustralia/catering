class DietaryRestriction < ApplicationRecord
  belongs_to :preloaded_meal, required: false, inverse_of: :dietary_restriction
end
