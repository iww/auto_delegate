json.array!(@dues) do |due|
  json.extract! due, :id, :collection_id, :max, :reg, :min, :sub
  json.url due_url(due, format: :json)
end
