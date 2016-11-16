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
    @anios[0] = 'Año...'
    1920.upto(2016) do |num|
      @anios.push num
    end
    @meses = { 'Mes...' => 0, 'Enero' => 1, 'Febrero' => 2, 'Marzo' => 3, 'Abril' => 4, 'Mayo' => 5, 'Junio' => 6, 'Julio' => 7, 'Agosto' => 8, 'Setiembre' => 9, 'Octubre' => 10, 'Noviembre' => 11, 'Diciembre' => 12 }
    @dias = Array.new
  end  

  def create
    @persona = Persona.new
    @persona.nombre = params[:persona][:nombre]
    @persona.apellido = params[:persona][:apellido]
    if params[:sexo] == '1' then
      @persona.sexo = 'Masculino'
    else
      @persona.sexo = 'Femenino'
    end

    if( (params[:mes_nac] != '0') && (params[:anio_nac] != 'Año...') ) then
      if(params[:dia_nac] != '0') then
        fecha_nac = "#{params[:anio_nac]}-#{params[:mes_nac]}-#{params[:dia_nac]} 00:00:00"    
      else
        fecha_nac = nil
      end
    end

    @persona.direccion = params[:persona][:direccion] if params[:persona][:direccion] != ''
    @persona.email = params[:persona][:email] if params[:persona][:email] != ''
    @persona.sitio_web = params[:persona][:sitio_web] if params[:persona][:sitio_web] != ''
    @persona.provincia_id = params[:provincias].to_i if params[:provincias] != '0'
    @persona.pais_id = params[:paises].to_i if params[:paises] != '0'
    
    respond_to do |format|
      if @persona.save
        Persona.where('id = ?', @persona.id).update_all(fecha_de_nacimiento: fecha_nac) if fecha_nac != nil
        format.html {
          redirect_to({:controller => 'persona', :action => 'index'}, notice: 'La persona ha sido guardada con éxito.')
        }            
      else 
        format.html {
          redirect_to({:controller => 'persona', :action => 'index'}, notice: 'No se ha podido guardar la persona.') 
        }            
      end  
    end        
  end

  def seleccion_pais
    @provincias = Provincia.where('pais_id = ?', params[:id_pais]).order(nombre: :asc)        
  end
end