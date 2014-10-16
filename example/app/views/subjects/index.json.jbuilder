json.array!(@subjects) do |subject|
  json.extract! subject, :id, :title, :code, :description
  json.url subject_url(subject, format: :json)
end
