json.extract! product, :id, :name, :sku, :quantity_on_hand, :supplier_id, :created_at, :updated_at
json.url product_url(product, format: :json)
