json.array!(@customers) do |customer|
  json.extract! customer, :id, :razao, :iss
  json.url customer_url(customer, format: :json)
end
