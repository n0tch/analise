json.array!(@instituicao_cursos) do |instituicao_curso|
  json.extract! instituicao_curso, :id, :instituicao_id, :curso_id, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao
  json.url instituicao_curso_url(instituicao_curso, format: :json)
end
