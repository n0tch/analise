json.array!(@ap_tipo_contatos) do |ap_tipo_contato|
  json.extract! ap_tipo_contato, :id, :nome, :flgStatus, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao
  json.url ap_tipo_contato_url(ap_tipo_contato, format: :json)
end
