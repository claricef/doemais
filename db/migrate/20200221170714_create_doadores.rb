class CreateDoadores < ActiveRecord::Migration[5.2]
  def change
    create_table :doadores do |t|
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :cep
      t.string :email
      t.string :telefone

      t.timestamps
    end
  end
end
