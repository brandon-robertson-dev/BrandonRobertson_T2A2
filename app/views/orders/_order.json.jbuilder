json.extract! order, :id, :user_id, :shipping_address, :cheese_id, :cheese_title, :cheese_price, :created_at, :updated_at
json.url order_url(order, format: :json)
