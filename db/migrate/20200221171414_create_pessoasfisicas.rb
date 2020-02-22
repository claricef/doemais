class CreatePessoasfisicas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoasfisicas do |t|
      t.string :nome
      t.string :rg
      t.string :cpf

      t.timestamps
    end
  end
end
