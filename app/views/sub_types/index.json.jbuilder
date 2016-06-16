json.array!(@sub_types) do |sub_type|
  json.extract! sub_type, :id, :name, :description, :type_of_article_id
  json.url sub_type_url(sub_type, format: :json)
end
