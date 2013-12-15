json.array!(@follow_relationships) do |follow_relationship|
  json.extract! follow_relationship, :user_id, :question_id
  json.url follow_relationship_url(follow_relationship, format: :json)
end
