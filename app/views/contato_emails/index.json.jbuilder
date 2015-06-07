json.array!(@contato_emails) do |contato_email|
  json.extract! contato_email, :id, :nome, :email, :flgStatus, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao, :ap_tipo_contato_id
  json.url contato_email_url(contato_email, format: :json)
end
