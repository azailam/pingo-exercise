json.array!(@shoes) do |shoe|
  json.extract! shoe, :id, :price, :color, :size, :category_id, :company_id, :cover, :count_view
  json.url shoe_url(shoe, format: :json)
end
