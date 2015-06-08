json.array!(@apresentacao_ebooks) do |apresentacao_ebook|
  json.extract! apresentacao_ebook, :id, :conteudo, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao
  json.url apresentacao_ebook_url(apresentacao_ebook, format: :json)
end
