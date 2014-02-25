json.array!(@collections) do |collection|
  json.extract! collection, :id, :user_id, :member_id, :start_date, :end_date, :initial_fees
  json.url collection_url(collection, format: :json)
end
