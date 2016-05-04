json.array!(@contatos) do |contato|
  json.extract! contato, :id, :nome, :email, :celular
  json.url contato_url(contato, format: :json)
end
