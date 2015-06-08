json.array!(@curso_responsavels) do |curso_responsavel|
  json.extract! curso_responsavel, :id, :idioma, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao
  json.url curso_responsavel_url(curso_responsavel, format: :json)
end
