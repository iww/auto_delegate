json.array!(@reports) do |report|
  json.extract! report, :id, :start_date, :end_date
  json.url report_url(report, format: :json)
end
