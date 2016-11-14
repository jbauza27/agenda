class PersonaController < ApplicationController
  def index
    @titulo_de_pagina = 'Agenda - Listado de contactos'
    @personas = Persona.order(apellido: :asc)    
  end
end