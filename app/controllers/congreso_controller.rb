class CongresoController < ApplicationController
  layout "frontpage"
  
  #FUNCIONES PARA LAS PENSATAÑAS DEL CONGRESO
  def mapa_distrital
    @distrito = params[:mi_parametro] #Aqui hacemos la consulta de los diputados en el distrito seleccionado
     @numero_dip = Diputado.where(:distrito => @distrito).count #Buscamos el contador de diputados en el distrito
     @diputados = Diputado.where(:distrito => @distrito) #Aquí buscamos los datos de los diputados del distrito 
     
     #Este es espacio para operacioens de tabla
     @c2 = @numero_dip / 2 #Aquí buscamos cuantos diputados estarán en la columna dos
     @c1 = @numero_dip - @c2 #Aquí buscamos cuantos diputados estarán en la columna uno
     
     #Ahora buscamos los diputados para cada columna
      @di1 = Diputado.where(:distrito => @distrito).limit(@c1)
      @di2 = Diputado.where(:distrito => @distrito).offset(@c1)
  end

  def lista_diputados
    @dip = Diputado.all
  end

  def perfil_diputados
    @codigo = params[:codigo]
    @diputado = Diputado.where(:id => @codigo)
    
    @diputado.each do |n|
      @nombre = n.nombre
      @dis = n.distrito
      @correo = n.correo
      @telefono = n.telefono
      @ext = n.ext
      @direccion = n.direccion
      @url = n.url_foto
    end
  end
  
  def re_perfil
    redirect_to :action => 'perfil_diputados'
  end
  
  def re_mapa_distrital
    redirect_to :action => 'mapa_distrital'
  end
  
  def re_lista_diputados
    redirect_to :action => 'lista_diputados'
  end 

  #API'S
  #API para Busqueda por distrito
  def diputadoDistrito
   
    @diputado = Diputado.where("distrito = ?", params[:distrito])
    respond_to do |format|
      format.html # show.html.erb
      format.json {render :json => @diputado}
    end
  end
  
  #API para listaa de diputados
  def diputadoLista
    @diputado = Diputado.all
    respond_to do |format|
      format.html # sho.html.erb
      format.json {render :json => @diputado}
    end
  end
  
  #API para Busqueda por ID
  def diputadoID
    @diputado = Diputado.where("id = ?", params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json {render :json => @diputado}
    end
  end
  
  #API para Busqueda por nombre
  def diputadoNom
    @diputado = Diputado.where("nombre = ?", params[:nombre])
    respond_to do |format|
      format.html # show.html.erb
      format.json {render :json => @diputado}
    end
  end

  def diputadoPartidoActual
    @diputado = Diputado.where("partido_actual = ?", params[:partido_actual])
    respond_to do |format|
      format.html
      format.json {render :json => @diputado}
    end
  end
  
  def diputadoPartidoPostulanate
    @diputado = Diputado.where("partido_postulante = ?", params[:partido_postulante])
    respond_to do |format|
      format.html
      format.json {render :json => @diputado}
    end
  end
  
end

 
  
  