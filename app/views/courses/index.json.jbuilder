json.array!(@courses) do |course|
  json.extract! course, :name, :alias, :year
  json.url course_url(course, format: :json)
end
