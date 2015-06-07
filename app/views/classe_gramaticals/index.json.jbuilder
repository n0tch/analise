json.array!(@classe_gramaticals) do |classe_gramatical|
  json.extract! classe_gramatical, :id, :nome, :sigla, :flgStatus, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao, :idioma_id
  json.url classe_gramatical_url(classe_gramatical, format: :json)
end
