class CreatePessoasjuridicas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoasjuridicas do |t|
      t.string :cnpj
      t.string :nomefantasia
      t.string :razaosocial

      t.timestamps
    end
  end
end
