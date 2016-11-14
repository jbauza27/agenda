class AddPersonaRefToTelefonos < ActiveRecord::Migration[5.0]
  def change
    add_reference :telefonos, :persona, foreign_key: true
  end
end
