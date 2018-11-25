json.extract! item, :id, :name, :price, :is_available, :menu_id, :created_at, :updated_at
json.url item_url(item, format: :json)
