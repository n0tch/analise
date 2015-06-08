json.array!(@areas) do |area|
  json.extract! area, :id, :curso_id, :nome, :flgStatus, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao
  json.url area_url(area, format: :json)
end
