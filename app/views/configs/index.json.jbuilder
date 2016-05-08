json.array!(@configs) do |config|
  json.extract! config, :id, :parametro, :descricao, :valor
  json.url config_url(config, format: :json)
end
