json.array!(@idioma_avisos) do |idioma_aviso|
  json.extract! idioma_aviso, :id, :idioma_id, :aviso_id
  json.url idioma_aviso_url(idioma_aviso, format: :json)
end
