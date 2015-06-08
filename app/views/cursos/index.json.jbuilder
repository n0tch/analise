json.array!(@cursos) do |curso|
  json.extract! curso, :id, :nome, :flgStatus, :inseridoPor, :dataDeAtualizacao, :atualizadoPor, :dataDeAtualizacao, :idioma_id
  json.url curso_url(curso, format: :json)
end
