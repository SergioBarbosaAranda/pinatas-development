json.array!(@articles) do |article|
  json.extract! article, :id, :name, :type, :price, :description
  json.url article_url(article, format: :json)
end
