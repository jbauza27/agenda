class PersonaController < ApplicationController
  def index
    @titulo_de_pagina = 'Agenda - Listado de contactos'
    @personas = Persona.order(apellido: :asc)    
  end

  def new
    @titulo_de_pagina = 'Agenda - Crear persona'
    @persona = Persona.new    
  end  
end