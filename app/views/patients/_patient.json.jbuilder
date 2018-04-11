json.extract! patient, :id, :first_name, :last_name, :room_number, :allergies, :diet_type, :diet_texture, :fluid_consistency, :fluid_restriction, :likes, :dislikes, :extra_information, :created_at, :updated_at
json.url patient_url(patient, format: :json)
