json.array!(@instituicaos) do |instituicao|
  json.extract! instituicao, :id, :nome, :site, :flgStatus, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao
  json.url instituicao_url(instituicao, format: :json)
end
