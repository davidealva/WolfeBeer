json.array!(@buyers) do |buyer|
  json.extract! buyer, :id, :avatar, :name, :quantity, :city, :country, :shipped
  json.url buyer_url(buyer, format: :json)
end
