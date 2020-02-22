class AddColumnTipoToDoador < ActiveRecord::Migration[5.2]
  def change
    add_column :doadores, :tipo, :string
  end
end
