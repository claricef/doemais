json.extract! doador, :id, :endereco, :numero, :bairro, :cidade, :uf, :cep, :email, :telefone, :created_at, :updated_at
json.url doador_url(doador, format: :json)
