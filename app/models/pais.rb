class Pais < ApplicationRecord
  has_many :provincias
  has_many :personas  
end
