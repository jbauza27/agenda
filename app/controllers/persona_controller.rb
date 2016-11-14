class PersonaController < ApplicationController
  def index
    @titulo_de_pagina = 'Agenda - Listado de contactos'
    @personas = Persona.order(apellido: :asc)    
  end

  def new
    @titulo_de_pagina = 'Agenda - Crear persona'
    @persona = Persona.new    
    @paises = Pais.order(nombre: :asc)    
  end  

  def create
    respond_to do |format|
      if @persona.save
        format.html { redirect_to :controller => 'persona', :action => 'new', new_propiedad_url, notice: 'La persona ha sido guardada con éxito.' }            
      else 
        format.html { render :new }            
      end  
    end    
  end
end