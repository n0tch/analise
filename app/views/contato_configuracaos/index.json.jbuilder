json.array!(@contato_configuracaos) do |contato_configuracao|
  json.extract! contato_configuracao, :id, :smtp, :porta, :host, :email, :senha, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao
  json.url contato_configuracao_url(contato_configuracao, format: :json)
end
