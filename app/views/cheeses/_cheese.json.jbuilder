json.extract! cheese, :id, :name, :description, :price, :rennet_coagulat, :location, :cheese_type, :rind, :milk, :size, :availability, :created_at, :updated_at
json.url cheese_url(cheese, format: :json)
