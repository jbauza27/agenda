class CreateProvincias < ActiveRecord::Migration[5.0]
  def change
    create_table :provincias do |t|
      t.string :nombre
      t.belongs_to :pais, foreign_key: true

      t.timestamps
    end
  end
end
