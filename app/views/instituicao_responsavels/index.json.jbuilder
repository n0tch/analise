json.array!(@instituicao_responsavels) do |instituicao_responsavel|
  json.extract! instituicao_responsavel, :id, :instituicao_id, :nome, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao
  json.url instituicao_responsavel_url(instituicao_responsavel, format: :json)
end
