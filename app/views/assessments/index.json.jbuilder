json.array!(@assessments) do |assessment|
  json.extract! assessment, :id, :assessment_type, :amount, :collection_id
  json.url assessment_url(assessment, format: :json)
end
