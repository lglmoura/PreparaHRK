json.array!(@categorias) do |categoria|
  json.extract! categoria, :id, :nome, :pai_id
  json.url categoria_url(categoria, format: :json)
end
