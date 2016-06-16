json.array!(@type_of_articles) do |type_of_article|
  json.extract! type_of_article, :id, :name, :description, :image
  json.url type_of_article_url(type_of_article, format: :json)
end
