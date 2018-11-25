json.extract! restaurant, :id, :name, :description, :address_1, :address_2, :street, :city, :zip, :ph, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
