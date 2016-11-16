class Persona < ApplicationRecord
  belongs_to :provincia
  belongs_to :pais

  validates :nombre, presence: { message: "El campo nombre no puede permanecer vacío." }
  validates :apellido, presence: { message: "El campo apellido no puede permanecer vacío." }
  validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Ingrese una dirección de mail valida." }
  validates :sitio_web, format: { with: /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/, message: "Ingrese una dirección web válida."}  
end
