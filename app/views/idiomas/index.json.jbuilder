json.array!(@idiomas) do |idioma|
  json.extract! idioma, :id, :nome, :flgStatus, :inseridoPor, :dataDeInsercao
  json.url idioma_url(idioma, format: :json)
end
