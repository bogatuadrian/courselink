json.array!(@universities) do |university|
  json.extract! university, :name, :alias
  json.url university_url(university, format: :json)
end
