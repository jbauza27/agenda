class CreatePersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :apellido
      t.string :sexo
      t.datetime :fecha_de_nacimiento
      t.string :direccion
      t.string :email
      t.string :sitio_web
      t.belongs_to :provincia, foreign_key: true
      t.belongs_to :pais, foreign_key: true

      t.timestamps
    end
  end
end
