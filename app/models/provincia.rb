class Provincia < ApplicationRecord
  belongs_to :pais
  has_many :personas
end
