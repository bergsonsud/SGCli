json.array!(@products) do |product|
  json.extract! product, :id, :Nome, :Price
  json.url product_url(product, format: :json)
end
