json.extract! food_enquete, :id, :name, :mail, :age, :food_id, :score, :request, :present_id, :created_at, :updated_at
json.url food_enquete_url(food_enquete, format: :json)
