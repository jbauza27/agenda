class PersonaController < ApplicationController
  def index
    @titulo_de_pagina = 'Agenda - Listado de contactos'
    @personas = Persona.order(apellido: :asc)    
  end

  def new
    @titulo_de_pagina = 'Agenda - Crear persona'
    @persona = Persona.new    
    @paises = Pais.order(nombre: :asc)    
    @anios = Array.new
    @anios[0] = 0
    1920.upto(2016) do |num|
      @anios.push num
    end
    @meses = { 'Mes...' => 0, 'Enero' => 1, 'Febrero' => 2, 'Marzo' => 3, 'Abril' => 4, 'Mayo' => 5, 'Junio' => 6, 'Julio' => 7, 'Agosto' => 8, 'Setiembre' => 9, 'Octubre' => 10, 'Noviembre' => 11, 'Diciembre' => 12 }
    @dias = Array.new
  end  

  def create
    respond_to do |format|
      if @persona.save
        format.html { redirect_to :controller => 'persona', :action => 'new', notice: 'La persona ha sido guardada con éxito.' }            
      else 
        format.html { render :new }            
      end  
    end    
  end

  def seleccion_pais
    @provincias = Provincia.where('pais_id = ?', params[:id_pais]).order(nombre: :asc)        
  end
end