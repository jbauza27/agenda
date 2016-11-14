class CreateTiposDeTelefono < ActiveRecord::Migration[5.0]
  def change
    create_table :tipos_de_telefono do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
