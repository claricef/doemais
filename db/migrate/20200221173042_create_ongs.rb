class CreateOngs < ActiveRecord::Migration[5.2]
  def change
    create_table :ongs do |t|
      t.string :cnpj
      t.string :razaosocial
      t.string :nomefantasia
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :ce
      t.string :email
      t.string :fone

      t.timestamps
    end
  end
end
