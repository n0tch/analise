json.array!(@avisos) do |aviso|
  json.extract! aviso, :id, :mensagem, :flgStatus, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao
  json.url aviso_url(aviso, format: :json)
end
