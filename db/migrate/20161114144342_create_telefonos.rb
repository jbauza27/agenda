class CreateTelefonos < ActiveRecord::Migration[5.0]
  def change
    create_table :telefonos do |t|
      t.string :numero
      t.belongs_to :tipo_de_telefono, foreign_key: true

      t.timestamps
    end
  end
end
